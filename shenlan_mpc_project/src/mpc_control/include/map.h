/*****************************************************************
 * @file   map.h
 * @brief  An OpenDrive-based HD-Map Data Interface oriented to autonomous vehicle route planning.
 * @details This interface dedicats to provide autonomous vehicles' navigation module access to the necessary map data and also the 
 * 			basic route planning function. The ...
 * 			
 * @author Xingjiang Yu
 * @version V0.8
 * @date   April 2020
***********************************************************************/
#pragma once
#ifndef MAP_H
#define MAP_H

#include <functional>
#include <vector>
#include <string>
#include <cfloat>


#ifdef _WIN32
#ifdef CPP_DLL_EXPORT
#define MAP_API __declspec(dllexport)
#else
//#define MAP_API __declspec(dllimport)
#define MAP_API 
#endif

#elif __linux__
#define MAP_API

#endif

/**
 * @namespace zjlmap
 *
 * @brief All interfaces based on the ZJLab defined HDMap data.
 */
namespace zjlmap 
{

// ------------------------------------ Types redefined----------------------------------------------
typedef double RoadS;  // the distance between the begin of the road to a position on road along the reference line
typedef double RouteS; // the distance between the begin of the route to a position on route along the reference lines

typedef const char* AnchorId; 		// global id of an anchor

typedef int32_t RoadId;		  		// global id of a road
typedef int32_t JunctionId;	  		// global id of a junction
typedef int32_t LocalLaneId;  		// local id of a lane on the Road  

typedef std::string ObjectId;	  		// global id of an object
typedef std::string TrafficLightId;
typedef std::string TrafficLightGroupId;
typedef std::string TrafficLightType;

/**
     * @struct LaneId 
     * @brief Parsed High-precision map format data in XML-tree-like structure.
     */
struct MAP_API LaneId
{
	RoadId road_id;		  // Global Id of Road
	int section_idx;
	LocalLaneId local_id; // Local id of lane on the Road
	LaneId();
	LaneId(RoadId ri, int si, LocalLaneId li);
    bool operator ==(LaneId op);
};

struct MAP_API LaneIdArray
{
	uint32_t length;
	LaneId* lane_id_array;
	LaneIdArray();
	
};

// ------------------------------------ Basic structures ---------------------------------------------------
/**
     * @struct XYZ 
     * @brief UTM XYZ coordinate of a certain position
     */
struct MAP_API XYZ
{

	double x; // UTM easting value
	double y; // UTM northing value (Map based on region in northern hemisphere)
	double z; // Absolute altitude value
	XYZ();
	XYZ(double xx, double yy, double zz);
};
/**
     * @struct XYZArray 
     * @brief Array of XYZ positions
     */
struct MAP_API XYZArray
{
	uint32_t length;
	XYZ* xyz_array;
	XYZ operator[](int index) const;
	XYZArray();
	~XYZArray();
	
};
/**
     * @struct SLZ 
     * @brief Road reference line based  coordinate of a certain position 
     */
struct MAP_API SLZ
{
	LaneId lane_id; // Global lane id
	RoadS s;		// s value based on Road reference line //hzy. road_s??
	double l;		// l value offset from road reference line
	double z;		//	z value based on the reference line plane
	SLZ();
	SLZ(LaneId id, double ss, double ll, double zz);
};
/**
     * @struct SLZArray 
     * @brief Array of SLZ positions
     */
struct MAP_API SLZArray
{
	uint32_t length;
	SLZ* slz_array;
	SLZ operator[](int index) const;
	SLZArray();
	SLZArray(unsigned int size);
	~SLZArray();
	
};


/**
     *  @struct Anchor, point on the map with special meaning
     *  @brief Enumerate possible running status of a function 
     */
struct MAP_API Anchor
{
	AnchorId id; // a string represents the anchor
	SLZ slz;	 // position of the anchor
	Anchor();
	//TODO: 这里id是const，赋值和释放都有点问题。 
	~Anchor() = default; //TODO:: 需要析构函数吗？
};
/**
     * @struct AnchorArray 
     * @brief Array of Anchors
     */
struct MAP_API AnchorArray
{
	uint32_t length;
	Anchor* anchor_array;
	AnchorArray();
	Anchor operator[](int index) const;
	~AnchorArray();
};


// ------------------------------------ Lane related structures / enumration ----------------------------------------------

/**
     * @enum LaneChangeType 
     * @brief enumrate the possible lane change options at a position on a lane
    */
typedef enum
{
	kNoChange 			= 0, // can only go straight along this lane 
	kLeftChange 		= 1,
	kRightChange 		= 2,
	kBothChange 		= 4,
	kUnknownChangeType 	= -1

} LaneChangeType;

/**
	 * @enum SingleLaneRoadMarkType
	 * @brief enumrate the types of roadmark of lane（if roadmark has double lines,pick the closest (to the lane center) one）
	*/
typedef enum
{
	kUnknownMark = 0, // 
	kBrokenWhite = 1,
	kBrokenYellow = 2,
	kSolidWhite = 3,
	kSolidYellow = 4,

} SingleLaneRoadMarkType;

/**
     * @enum LaneTurnType
     * @brief enumrate 车道类型，直行或者左右转，目前仅前四个枚举有效
    */
typedef enum LaneTurnType_
{
    kNoturn,             // 非路口或者断头路
    kForward,            // 直行
    kTurnLeft,           // 左转
    kTurnRight,          // 右转
    kForwardAndLeft,     // 直行加右转
    kForwardAndRight,    // 直行加左转
    KLeftAndRight,       // 左右转
    kUTurn,              // U形弯
    KAll,                // 直行和左右转皆可
} LaneTurnType;

/**
     * @enum LaneTurnType
     * @brief enumrate the possible lane turning options of a lane, compositions can be refelected by bits
     *      未知 kUnkonwnTurnType	= -1,
            非路口 KNOTURN				= 0X0,
            直行 KFORWARD				= 0X1,
            左转 KLEFTTURN 				= 0X2,
            右转 KRIGHTTURN 				= 0X4,
            u型弯 KUTURN 				= 0X8,

            叠加型举例：
            直行加左转：                  = 0x3
            直行加右转					= 0x5
            仅左右转						= 0x6
            所有皆可						= 0xF
    */
typedef int32_t LaneTurnTypeOrigin;// NOTE: Standard OpenDrives do not have Turn Type attributes

/**
 * @struct LaneInfo
 * @brief Necessary information of a lane oriented to navigation
 * 
 */
struct MAP_API LaneInfo
{
	LaneId id; 		// The global id of the lane		
	RoadS  begin;	// start s of the lane on its belonged road			
	RoadS  end;		// end s of the lane on its belonged road	
	RoadS length;	//
	//LaneTurnType lane_turn_type; // NOTE: Currently TurnType feature is not included in our map, hence all the turn_type you
	//							 // read will be "kUnkonwnTurnType"
	LaneInfo();
};

struct MAP_API LaneLinkage {

	std::vector<LaneId> predecessor_lanes;
	std::vector<LaneId> successor_lanes;

    int left_neighbor_valid;    // 左邻道是否有效，-1-逆向，0-无效，1-同向
    int right_neighbor_valid;   // 右邻道是否有效，-1-逆向，0-无效，1-同向
	LaneId left_neighbor;
	LaneId right_neighbor;

	LaneLinkage() = default;
};

///**
// * @struct LaneNeighbor
// * @brief (面向导航和决策端)提供车道的邻道信息
// *
// */
//struct MAP_API LaneNeighbor {
//    LaneId left_neighbor;
//    LaneId right_neighbor;
//};


// ------------------------------------ Object related structures / enumration ----------------------------------------------
/**
     *  @enum ObjectType //TODO: Defined in the reference documentation 
     *  @brief Enumerate the route planning related opendrive objects
     */
typedef const char* ObjectType;
struct MAP_API ObjectTypeArray
{
	uint32_t length;
	SLZ* object_type_array;
};

/**	
	 *  暂时未用到
	 *  @struct object listed on the forward route
	 *  @brief a light-weighted traffic object information structure used for quick search 
	 */
struct MAP_API ObjectInRoute
{
	ObjectId id;	 // Object id
	ObjectType type; // Object Type
	RouteS distance; // distance to current position along the route
	SLZArray corner_points;
	double height;
	ObjectInRoute();  
};

/**
	 *  暂时未用到
	 */
struct MAP_API ObjectInRouteArray
{
	uint32_t length;
	ObjectInRoute* object_in_route_array;
	ObjectInRouteArray();
};

/**
	 *  暂时未用到
	 */
struct MAP_API ObjectOnRoad {
	ObjectId id;
	double s;
	double l;
	ObjectType type; // Object Type
	XYZArray corner_points;
	double height;
	ObjectOnRoad() = default;
	~ObjectOnRoad() = default;
};

/**
	 * @struct StopLine
	 * @brief Road reference line based  coordinate of a certain position
	 * @warning One Stopline usually related to one light, sometimes multiple lights(if one light group has only one stopline reference) 
	 */
struct MAP_API StopLine
{
	ObjectId id;
	RoadId road_id; // Global lane id
	TrafficLightGroupId group_id;    //NOTE: 目前认为一个group一个Stopline 而不是一个trafficlight 一个 stopline

	std::vector<XYZ> line_xyz;		// 
	std::vector<SLZ> line_slz;		//	
	
	StopLine();
};

struct MAP_API Pole
{
	ObjectId id;
	SLZ slz; // Global lane id
	XYZ xyz;
	double height;
	double hdg;
	double pitch;
	double roll;

	Pole();
};

struct MAP_API TrafficLight {
	TrafficLightId  id;
	TrafficLightType type;	// 红绿灯类型，区分红绿灯作用对象，形态等(暂时不用)
	RoadId position_road_id; // 红绿灯模型所处道路Id
	double s;			// 红绿灯模型所处位置S坐标
	double l;			// 红绿灯模型所处位置l坐标
	double zOffset;			// 红绿灯模型中心点所在高度
	uint32_t orientation;   // 1: forward as lane direction; -1,backwards;
	double hdg;				// 红绿灯模型平面朝向角（yaw）
	double pitch;			// 红绿灯模型前后倾斜角
	double roll;			// 红绿灯模型左右翻转角

	RoadId logical_road_id;	// 红绿灯生效的作用道路Id
	LocalLaneId valid_from;	// 红绿灯生效车道Id区间左边界（含）
	LocalLaneId valid_to;	// 红绿灯生效车道Id区间右边界（含）

	std::vector<ObjectId> reference_list; // 红绿灯相关的Object的id的list，比如杆子,停止线
	TrafficLight() = default;
};

struct MAP_API TrafficLightGroup {
	std::string group_id;
	std::vector< TrafficLightId> group_members;
	ObjectId pole_id;
	TrafficLightGroup() = default;
};

// ------------------------------------ Route related structures ----------------------------------------------
/**
	 * @struct Route
     * @brief 基本的路线信息，用于存储和传递routing的结果
     */
struct MAP_API Route
{
	std::vector<LaneId> lane_id_vec;	// routing 所得的路线的Vector版，方便c++端调用
	SLZ 		begin;					// routing路线的起始点
	SLZ 		end;					// routing路线的目标点
	RouteS 		length;					// routing所得路线的总长
	Route(); // TODO: 需要给予定长的初始化支持？
	void arr2vec();
};

struct MAP_API SampledLine
{
	std::vector<SLZ> centerline; 
	SampledLine();
};

struct MAP_API RouteSegment
{
	LaneId lane_id;
	double start_s;
	double end_s;
	//std::vector<TracePoint> way_points;
	RouteSegment() = default;
};

/**
     * @enum TracePointType
     * @brief enumrate the types of TracePoint(normal, speedbump and so on)
    */
typedef enum
{
    kNormal = 0, // 正常轨迹点
    kSpeedBump = 1, // 包含减速带的轨迹点

} TracePointType;

/**
     * @struct TracePoint
     * @brief 按决策端需求给出一条道路中心线上某个点的所有需要的信息
     */
struct MAP_API TracePoint {
    double x;					//该点x坐标
    double y;					//该点x坐标
    double z;					//该点x坐标
    LaneId lane_id;				//该点所在车道的全局Id
    double s;					//该点在车道上的s值
    double l;					//该点在车道上的l值
    double hdg;					//中心线上该点处在全局坐标系下的朝向角
    double curv;				//中心线上该点处的曲率
    double curv_deriv;			//中心线上该点处的曲率一阶导
    SingleLaneRoadMarkType left_roadmark;	//车道在该点s坐标处的左边界标线类型
    SingleLaneRoadMarkType right_roadmark;	//车道在该点s坐标处的右边界标线类型
    TracePointType type;
    double left_border;
    double right_border;
    TracePoint() = default;
    TracePoint(double xx, double yy, double zz, LaneId ldld, double ss, double ll, double hh, double cc, double cdcd, SingleLaneRoadMarkType lr, SingleLaneRoadMarkType rr, TracePointType tpt, double left_border_, double right_border_);
};

/**
     * @struct SpeedBump
     * @brief  减速带位置结构体定义
     */
struct MAP_API SpeedBump {
    //int valid;       // 是否有效
    double s_start;    // 减速带开始时s值
    double s_end;      // 减速带结束时s值
    LaneId lane_id;    // 减速带所处车道
};

/**
     * @struct BusStop
     * @brief  接驳站点位置结构体定义
     */
struct MAP_API BusStop {
    //int valid;    // 是否有效
    int id;           // 站点id
    double s;         // 站点几何中心s值
    double l;         // 站点几何中心l值
    double z;         // 站点几何中心z值
    double length;    // 站点长度
    double width;     // 站点宽度
    double hdg;       // 站点航向角
    double x;         // 站点几何中心x坐标
    double y;         // 站点几何中心y坐标
    LaneId lane_id;   // 站点所处车道
};

struct MAP_API StreetLamp
{
    int model;
    double hdg;
    XYZ xyz;
    SLZ slz;
    ObjectId id;
};

/**
     * @struct Rotation
     * @brief  三维转角结构体定义（绕slz）
     */
struct MAP_API Rotation {
    double roll;    // 绕s方向旋转（车头方向）
    double pitch;   // 绕l方向旋转（垂直车头方向）
    double yaw;     // 绕z方向旋转
};

/**
     * @struct ParkingSpace
     * @brief  车位信息结构体定义
     */
struct MAP_API ParkingSpace
{
    int    id;          // 车位id
    double hdg;         // 车位朝向
    RoadId road_id;     // 车位相邻道路id
    XYZ    corner[4];   // 车位四个角点xyz坐标
};

// ------------------------------------ ErrorCode Enumration ----------------------------------------------
/**
		 *  @enum ErrorCode
		 *  @brief Enumerate possible running status of the methods 
		 */
enum ErrorCode
{
	kOK =					0,	
	kFileReadingError =		1, // 文件路径错误或者xml格式错误
	kLaneLocalIdInvalid =	2,
	kMapNotReady =			3,

	kAnchorNotCreated =		4,
	kAnchorsNotEnough =		5,	   // 给出锚点少于2个
	kAnchorInvalid =		6,
	kAnchorRelocated =		7,	   // 锚点重定位，当用户所指位置无锚点而自动分配给nearest point时返回
	kAnchorsTooClose =		8,
	kRoadSInvalid =			9,	   //
	kRouteSInvalid =		10,	   //

	kPositionNotInMapBound =	11,	   //
	kUnknownType =				12,	   //
	kLoadedMapExists =			13,	   //	
	kInvaildPosition =			14, 	   //
	kPositionsTooClose =		15,	   //
	kTooEarlyToChange =			16,      //
	kTooLateToChange =			17,
	kIlegalLaneChange =			18, //
	kPositionNotInAnyJunction = 19,
	kPositionNotOnRoad =		20,
	kPositionNotOnLane =		21,
	kPositionReversed =			22,
	kDidntGetCoordinate =		23,
	kSpeedRecordNotFound =		24,
	kXYZNotOnRoads =			25,
	kAnchorListEmpty =			26,
	kAnchorNoMatches =			27,
	kJunctionIdInvalid =		28,
	kRoadIdInvalid =			29,
	kObjectNotFound =			30,
	kRoutingNotInitialized	 =	31,
	kLaneSectionIndexInvalid =	32,
	kNoTrafficLightFound	 =	33,
	kRouteNotFound			 =	34,
	kNotInMapBound			 =  35,
	kSpeedSInvalid			 =	36,

	kAnchodIdNotFound		 =	37,
	kAnchorAlreadyExistsInList= 38,
	kMapNotInited			 =  39,
	kIndexOverflow			 =  40,
	kLaneUidInvalid			 =  41,
	kJunctionBoundaryInvalid =  42,

	kWrongTrafficLightGroup	 =  43,
	kJunctionBoundaryNotExist=  44,
	kInvalidStartEndPos		 =  45,
	kStartEndCurvEql		 =  46,
	kInvalidThresholdValue	 =  47,
	kNoSuccessorExists		 =  48,
	kNoSuccessorJunction	 =	49,
	kObjectNotCorrect		 =  50,
	kNoTrafficlightGroupFound=  51,
	kNoStoplineFound		 =  52,
	kInCorrectObject		 =  53,
	kTrafficLightGroupNotFound = 57,
	kStopLineNotFound		 =	 60,
	kNoSuccessorLaneMatches	 =   61,
	kNoMapLoaded			 =	 62,
	kSignalNotFound			 =	 63,
	kStopLineHasNoRelatedTrafficLight = 67,
    KNullptr                 = 68,

};


//------------------------------------------------------ Const Values ----------------------------------------------
const LaneId EmptyLandId = LaneId();
const XYZ EmptyXYZ = XYZ(DBL_MAX, DBL_MAX, DBL_MAX);
const SLZ EmptySLZ = SLZ();
const Anchor EmptyAnchor = Anchor();

const LaneInfo EmptyLaneInfo = LaneInfo();
const ObjectInRoute EmptyObjectInRoute = ObjectInRoute();
const Route EmptyRoute = Route();
const SampledLine EmptySampledRoute = SampledLine();

const LaneIdArray EmptyLaneIdArray = LaneIdArray();
const XYZArray EmptyXYZArray = XYZArray();
const SLZArray EmptySLZArray = SLZArray();
const AnchorArray EmptyAnchorArray = AnchorArray();
const ObjectInRouteArray EmptyObjectInRouteArray = ObjectInRouteArray();

//------------------------------------------------------ LaneChangePolicy type function pointer---------------------
/**
 * @brief The decleration of the function pointer of the lane change policy
 * 
 */
MAP_API typedef SLZ (*LaneChangePolicy) (const SLZ slz, const LaneId lane_id);


//-------------------------------------------------------Interface Class --------------------------------------------
/**
	 *  @class Map
	 *  @brief Surface class of the route planning oriented OpenDrive HDMap Interface
	 *  @details 
	 */
class MAP_API Map
{
public: // TODO:
	/**
		     * @brief Constructor of Map class
		     */
	Map();
	/**
			 * @brief Destorier of Map class
			 */
	~Map();

	// ------------------------------------ Map data loading/unloading methods ----------------------------------------------
	/**
		     * @brief load one map from local file. 
			 * 		  If there already has map loaded in the Object, replace it.
			 * 		 
			 * 
			 * @param file_path: path of map data file
			 * @param handle: handle of the loaded map
		     * @return ErrorCode： 0：success, otherwise: failed
		     */
	ErrorCode load(const char *file_path, int& handle);

	/**
		     * @brief delete loaded map from Memory
		     * @return ErrorCode： 0：success, otherwise: failed
		     */
	ErrorCode unload(int& handle);

    void get_eswn(double& north, double& south, double& east, double& west) const;

	// ------------------------------------ Position / S related methods ----------------------------------------------
	
	/**
		     * @brief transform an UTM-based XYZ coordinate to Road-Reference-Line-based SLZ coordinate
		     * @param xyz  XYZ coordinate system
			 * @param slz  SLZ coordinate system
			 * @param hint  lane_id as hint information for the searching
		     * @return  SLZ coordinate 
			 * 			or the SLZ coordinate of the nearest point on a road
			 * 			if not found return SLZ_EMPTY()
			 * 			
		     */
	SLZ find_slz(const XYZ &xyz,  double radius, const LaneId& hint) const; // 

	/**
		     * @brief transform an Road-Reference-Line-based SLZ coordinate to UTM-based XYZ coordinate 
		     * @param slz  SLZ coordinate system
		
		     * @return XYZ coordinate system:
			 * 		   If slz is empty, return XYZ_EMPTY()	
		     */
	XYZ xyz(const SLZ &slz) const;

	// ------------------------------------ Anchor related methods ----------------------------------------------
	/**
		     * @brief for users to manually create an anchor by specifing the anchor's id and position 
		     * @param id  proposed anchor's id 
		     * @param pos  proposed anchor's position in SLZ coordinate system
		     * @return the created anchor object, return ANCHOR_EMPTY() if no anchor was created 
		     */
	Anchor create_anchor(const AnchorId &id, const SLZ &pos) const;

	/**
		     * @brief for users to manually add an anchor to an existed anchor list 
		     * @param anchor anchor to be added 
		     * @return true:success, false: failed
		     */
	static ErrorCode add_anchor(const Anchor &anchor,  AnchorArray &anchor_list);

	/**
		     * @brief for users to manually delete an anchor from an existed anchor list 
		     * @param id id of the anchor to be deleted 
		     * @return true:success, false: failed
		     */
	static ErrorCode delete_anchor(const AnchorId &id,  AnchorArray &anchor_list);

	/**
		     * @brief for users to find the anchor with certain pattern in the anchor list 
			 * @param pattern pattern of the desired anchor's string id, could be writtern in regular expression
			 * @param anchor_list the anchor list to be searched in
			 * @param anchor the urged anchor
			 * @return true:success, false: failed
			*/
	static ErrorCode find_anchor(const char* &pattern, const AnchorArray &anchor_list, AnchorArray& found_anchors);

	// ------------------------------------ Lane related ----------------------------------------------
	/**
			 * @brief find the lane with specified id and read information 
			 * @param id 
			 * @return lane informations listed in Lane Structure, 
			 * 		   if Empty return LANE_INFO_EMPTY()
			 */
	LaneInfo query_lane_info(const LaneId &id) const;

	/**
			 * @brief query the speed limitation at a certain position on lane
			 * 
			 * @param id 
			 * @param s 
			 * @return double: speed_limit. If not found return DEL_MAX;
			 */
	ErrorCode query_lane_speed_at(const LaneId &id, const RoadS &s, double &speed_limit) const;

	/**
			 * @brief query the permitted lane change type at a certain position on lane
			 * 
			 * @param id 
			 * @param s 
			 * @param lane_change_type 
			 * @return LaneChangeType, if not found return kUnknownChangeType
			 */
	LaneChangeType query_lane_change_type_at(const LaneId &id, const RoadS &s) const;
	
	/**
		     * @brief query the left and right boundary of the specified lane
			 * @param lane_id  the global id of the lane to be queried
			 * @param left_boundary  the sample vertices' SLZ coordinate list of the left boundary
			 * @param right_boundary  the sample vertices' SLZ coordinate list of the right boundary
			 * @return ErrorCode
			*/
	ErrorCode query_lane_boundaries(const LaneId &lane_id, double sampling_spacing, SLZArray &left_boundary, SLZArray &right_boundary) const;

	//ErrorCode query_road_mark_between(const LaneId& id_1, const LaneId& id_2, ) const;
	/**
			 * @brief calculate the center line in a specified interval on the lane
			 * @param id id of the current lane
			 * @param s1 start point of the interval
			 * @param s2 end point of the interval
			 * @param sampling_spacing spacing between sampling points 
			 * @param centerline the center line in the specified interval on the current lane
			 * @return ErrorCode
			 */
	ErrorCode calc_lane_center_line(const LaneId &id, const RoadS &s1, const RoadS &s2, double sampling_spacing,
							  SLZArray &centerline) const;

    ErrorCode get_ROI_lane_line(const XYZ& point, std::vector<XYZ>& roi_points, const double distance = 20.0) const;

    ErrorCode get_ROI_lane_line(const SLZ& point, std::vector<XYZ>& roi_points, const double distance = 20.0) const;

	//  ------------------------------------ Route related methods ----------------------------------------------

    ErrorCode plan_route_shortest(const XYZ& start_point, const std::vector<XYZ> &way_points, const XYZ& end_point, Route& route) const;

    ErrorCode plan_route(const XYZ& start_point, const std::vector<XYZ> &way_points, const XYZ& end_point, Route& route) const;
	
	/**
	 * @brief plan the route from given start/end/way points based on an abstracted Opendrive Map by AStar algorithm.
	 * 
	 * @param start_anchor 
	 * @param way_point_list 
	 * @param end_anchor 
	 * @param route 
	 * @return ErrorCode 
	 */
	ErrorCode plan_route(const Anchor &start_anchor, 
						 const AnchorArray &way_point_list, 
						 const Anchor &end_anchor, 
						 Route &route) const;
	/**
		    * @brief return a list of sampling points of a user-specified interval on the given route
			* 
		    * @param route the route which the sample route segment based
		    * @param start_route_s the start RouteS of current Sample Route Segment on the route
			* @param length the proposed length of the sample route segment
			* @param default_lane_change_policy for getting the lane change trace without any user input
			* \@param turning_radius the turning radius given by the vehicle state
			* @param sample_route_segment the result route segment sampling point list to be passed out
		    * @return ErrorCode: 0 success; otherwise error occurs;
		    */
	ErrorCode sample_route(const Route &route,
										const RouteS &start_route_s, 
										const RouteS &length,
										SampledLine &sampled_route,
										LaneChangePolicy lane_change_policy
										) const;
	

	
	// ------------------------------------ Junction related methods ----------------------------------------------
	
	/**
			 * @brief calclate whether the given point is inside a specified junction or not
			 * 
			 * @param junction_id 
			 * @param pos 
			 * @return true: the point is inside the junction (including the situation point on the boundary),  
			 * 		   false: not inside the junction.
			 */
	bool is_inside_junction(const JunctionId &junction_id, const SLZ &pos) const;

	/**
		     * @brief find the junction's physical outline points if they exist.
			 * @param junction_id 
			 * @param junction_boundary XYZ vertices series in vehicle-heading-wise direction, begin with the nearest
			 * 							junction boundary point
			 * @return ErrorCode:0 successfully found the jucntion boundary; otherwise error occurs;
			*/
	ErrorCode find_junction_boundary(const JunctionId &junction_id, XYZArray &junction_boundary) const;

	// ------------------------------------ Object related methods ----------------------------------------------

	/**
		    * @brief return a list of objects sorted by the (forward) distance to the vehicle on the located route
		    * @param route 
		    * @param start_route_s 
		    * @param length 
		    * @param object_type_filter 
		    * @param object_list 
			* @return ErrorCode: 0 success; otherwise error occurs;
			*/
	ErrorCode find_objects_on_route(const Route &route, const RouteS &start_route_s, const RouteS &length, const ObjectTypeArray &object_type_filter,
									ObjectInRouteArray &object_list) const;

	

	ErrorCode find_objects_on_road(const RoadId& road, std::vector<ObjectOnRoad>& objects) const; 
	// ----------------------------------- Case related methods ----------------------------------------------

	//**
	//		* @brief get the heading angle of the lane at the given position on lane
	//		* @param id lane's global id
	//	    * @param pos the given point of the querying 
	//	    * @param angle the angle between the lane's heading angle at pos and the east direction
	//		* @return ErrorCode: 0 success; otherwise error occurs;
	// */
	ErrorCode calc_road_heading_angle(const SLZ& pos, double& angle) const;

	ErrorCode calc_road_end_heading_angle(const LaneId& id, double& angle) const;

	ErrorCode query_lane_width_at(const SLZ& pos, double& width) const;

	ErrorCode query_road_width_at(const SLZ& pos, double& width) const;

	ErrorCode query_road_mark_types_between(const SLZ& pos1, const SLZ& pos2, char** &road_mark_types, unsigned int& length_) const;

	ErrorCode find_slz_with_hint(const XYZ& xyz, const LaneId& hint, SLZ& slz)const;
	ErrorCode calc_slz_with_road_id(const XYZ& xyz, const RoadId& road_id, SLZ& slz)const;
	ErrorCode find_slz_global(const XYZ& xyz, SLZ& slz)const;
	
    ErrorCode find_slzs(const XYZ& xyz, std::vector<SLZ>& slzs)const;

	ErrorCode is_road_in_junction(const RoadId& road_id, JunctionId& junction_id) const;

	
	// check the boundaries of every lane in the map
	ErrorCode get_all_boundary_points(std::vector<XYZ>& plist);

	// check the distance from a position along the route to the end of the route
	double calc_dist_to_end_anchor(const XYZ& xyz, const std::vector<LaneId>& lane_uids, double start_s, double end_s)const;
	// check if the given point is inside the junction 
	bool is_inside_junction(const JunctionId& junction_id, const XYZ& pos) const;
	
	//
	ErrorCode is_inside_junction(const LaneId& hint, const XYZ& pos, JunctionId& junction_id) const;

	//
	ErrorCode query_lane_linkage(const LaneId& lane_uid, LaneLinkage& lane_linkage) const;

    /*ErrorCode query_lane_neighbor(const LaneId& lane_uid, LaneNeighbor& lane_neighbor) const;*/

	//
	bool is_point_on_road(const RoadId road_id, const XYZ& xyz) const;

	/**
			 * @brief 给定阈值范围内,判断平面上某个点是否处于指定道路的frenet坐标系内
			 * @param road_id 指定道路的id
			 * @param xyz 查询点的绝对坐标
			 * @param threshold 指定点到边界的阈值，在阈值内,表示在道路附近,local_id赋值为离它最近车道的local_id
			 * @param slz 查询点在指定road的frenet坐标系下的相对坐标。
						  当该点未投影到road参考线上时，返回的slz的lane_id的section_idx和local_id均为INT_MAX；
						  当该点投影到road参考线上，但是在道路边界外,并在阈值之外时: 返回的slz的lane_id的local_id为999，section_idx正常；
						  当该点投影到road参考线上，且在道路边界内时,或者在道路边界外并在阈值之内时: 返回的slz正常；
			 * @pre-condition 地图已成功加载，road_id 存在于地图上，distance>0
			 * @post-condition 无
			 * @return 若点能够投影到道路参考线上则返回true，否则返回false
			*/
	bool is_point_in_road_range(const RoadId& road_id, const XYZ& xyz, double threshold, SLZ& slz) const;


	ErrorCode query_lane_boundaries(const LaneId& lane_id, const RoadS& s1, const RoadS& s2, double sampling_spacing, SLZArray& left_boundary, SLZArray& right_boundary) const;

	//
	ErrorCode calc_lane_center_line_curv(const LaneId& id, const RoadS& s1, const RoadS& s2, double sampling_spacing, std::vector<TracePoint>& centerline)const;

    void get_all_street_lamps(std::vector<StreetLamp>& street_lamps) const;
    void get_street_lamps_by_road(const RoadId road_id, std::vector<StreetLamp>& street_lamps) const;

    ErrorCode get_all_speed_bump(std::vector<SpeedBump>& speed_bumps) const;

    ErrorCode get_all_bus_stop(std::vector<BusStop>& bus_stops) const;

    bool get_bus_stop_by_lane(const LaneId& id, std::vector<BusStop>& bus_stops) const;

    bool get_bus_stop_by_road(const RoadId road_id, std::vector<BusStop>& bus_stops) const;
	
    ErrorCode get_all_parking_space(std::vector<ParkingSpace>& parking_spaces) const;
    bool get_parking_space_by_road(const RoadId road_id, std::vector<ParkingSpace>& parking_spaces) const;
    bool is_point_in_parking_space(const XYZ& xyz) const;
    bool is_point_in_parking_space(const XYZ& xyz, const ParkingSpace& parking_space) const;
    bool get_parking_space_by_xyz(const XYZ& xyz, ParkingSpace& parking_space) const;

	ErrorCode get_all_laneids(std::vector<LaneId>& all_laneids ) const;

    ErrorCode get_rotation_by_slz(const SLZ& slz, Rotation& rotation) const;
    ErrorCode get_rotation_by_xyz(const XYZ& point, Rotation& rotation) const;
    ErrorCode get_rotation_by_xyz_with_hint(const LaneId& hint, const XYZ& point, Rotation& rotation) const;

    ErrorCode get_z_by_sl(SLZ& slz) const;

    ErrorCode get_z_by_xy_with_road_id(const RoadId& road_id, XYZ& xyz) const;

    ErrorCode get_z_by_xy_with_last_z(double last_z, XYZ& xyz) const;
	
    double get_road_length(const RoadId& road_id) const;
	
	//----------------------------------------------MS8 Traffic Light
	/**
	* @brief 给出Road Id，查询道路上所有红绿灯的Id
	* @param road_id
	* @param traffic_lights_ids 传出的红绿灯id vecor
	* @return ErrorCode: 0 success; otherwise error occurs;
	*/
	ErrorCode query_traffic_lights_in_road(const RoadId& road_id, std::vector<ObjectId>& traffic_lights_ids) const;

	/**
		* @brief 查询地图上所有红绿灯Id
		* @param road_id
		* @param traffic_lights_ids 传出的红绿灯id vecor
		* @return ErrorCode: 0 success; otherwise error occurs;
		*/
	ErrorCode query_all_traffic_light_groups(std::vector<TrafficLightGroup>& traffic_light_groups_id) const;

	/**
		* @brief 输入一个SLZ位置，给出该位置所处车道的转向类型。
		* @param slz
		* @param turn_type 传出转向类型，如果当前车道后继不是junction，则返回LaneTurnType::k;目前不考虑kUnkonwnTurnType，只有ErrorCode 非 kOK 时才有 turn_type = kUnkonwnTurnType。
		* @return ErrorCode: 0 nothing wrong; otherwise error occurs;
		*/
	ErrorCode query_lane_turn_type(const SLZ& slz, LaneTurnTypeOrigin& turn_type) const;

    ErrorCode query_lane_turn_type(const SLZ& slz, LaneTurnType& turn_type) const;

	
	/**
		* @brief 输入一个SLZ位置，给出该位置前方第一个junction的Id。
				1. 查到junction。此时若距离大于distance则认为前方无junction，返回空JunctionId = -1；否则返回对应junctionId
				2. 后继未查到junction，认为前方无junction，返回空JunctionId = -1；
		* @param slz
		* @param distance 前方查询距离
		* @param junc_id 传出的junction id
		* @return ErrorCode: 0 success; otherwise error occurs;
		*/
	ErrorCode query_forward_junction_by_slz(const SLZ& slz, double distance, JunctionId& junc_id) const;

	/**
		* @brief 输入一个SLZ位置，给出该位置前方的最近一个行车红绿灯组
		* @param slz
		* @param distance 前方查询距离
		* @param type 指定查询的红绿灯类型（行车，行人，自行车）
		* @param traffic_light_group 传出的红绿灯组，若前方distance距离内无红绿灯组，返回EmptyTrafficLightGroup
		* @return ErrorCode: 0 nothing wrong; otherwise error occurs;
		*/
	ErrorCode query_forward_traffic_light_group_by_slz(const SLZ& slz, double distance, TrafficLightType type, TrafficLightGroup& traffic_light_group) const;

	
	/**
		* @brief 输入一个SLZ位置，给出该位置前方第一个停止线的Id。若无,返回EmptyObjectId（空字符串）
		* @param slz
		* @param distance 前方查询距离
		* @param stop_line_id 传出的stopline id
		* @return ErrorCode: 0 nothing wrong; otherwise error occurs;
		*/
	ErrorCode query_forward_stopline_by_slz(const SLZ& slz, double distance, ObjectId& stop_line_id) const;
	
	/**
	* @brief 通过id查询红绿灯对象
	* @param traffic_light_id
	* @param traffic_light 传出的红绿灯对象，若无该id对应的红绿灯，返回EmptyTrafficLight{id = "-1"}
	* @return ErrorCode: 0 nothing wrong; otherwise error occurs;
	*/
	ErrorCode get_traffic_light_info_by_id(const TrafficLightId& traffic_light_id, TrafficLight& traffic_light) const;

	/**
		* @brief 通过id查询停止线对象
		* @param stopline_id
		* @param stopline 传出的停止线对象，若无该id对应的停止线，返回EmptyStopLine{id = "-1"}
		* @return ErrorCode: 0 nothing wrong; otherwise error occurs;
		*/
	ErrorCode get_stopline_info_by_id(const ObjectId& stopline_id, StopLine& stopline) const;

	/**
		* @brief 通过id查询Pole对象
		* @param pole_id
		* @param pole 传出的灯杆对象，若无该id对应的灯杆，返回EmptyPole{id = "-1"}
		* @return ErrorCode: 0 nothing wrong; otherwise error occurs;
		*/
	ErrorCode get_pole_info_by_id(const ObjectId& pole_id, Pole& pole) const;

	/**
		* @brief 通过红绿灯组id获取红绿灯组对象
		* @param traffic_light_group_id
		* @return TrafficLightGroup， 若未查询到，则返回EmptyTrafficLightGroup
		*/
	ErrorCode get_traffic_light_group_info_by_id(const TrafficLightGroupId& traffic_light_group_id, TrafficLightGroup& tlg) const;

	/**
		* @brief 通过红绿灯id查询其所处的组的id
		* @param traffic_light_id
		* @param traffic_light_group_id
		* @return ErrorCode: 0 nothing wrong; otherwise error occurs;
		*/
	ErrorCode query_traffic_light_group_id_by_member(const TrafficLightId& traffic_light_id, TrafficLightGroupId& traffic_light_group_id) const;

	/**
		* @brief 输入两个车道，源车道与目标车道，给出从源车道到目标车道的转向类型。
		* @param origin_lane_id 源（起始）车道    
		* @param target_lane_id 目标车道
		* @param turn_type 传出转向类型，只有当目标车道是源车道的后继车道时，才返回LaneTurnType::k，否则以ErrorCode非0表示kUnkonwnTurnType。
		* @return ErrorCode: 0 nothing wrong; otherwise error occurs;
		*//**
		* @brief 输入两个车道，源车道与目标车道，给出从源车道到目标车道的转向类型。
		* @param origin_lane_id 源（起始）车道    
		* @param target_lane_id 目标车道
		* @param turn_type 传出转向类型，只有当目标车道是源车道的后继车道时，才返回LaneTurnType::k，否则以ErrorCode非0表示kUnkonwnTurnType。
		* @return ErrorCode: 0 nothing wrong; otherwise error occurs;
		*/
	ErrorCode query_lane2lane_turn_type(const LaneId& origin_lane_id, const LaneId& target_lane_id, LaneTurnTypeOrigin& turn_type) const;

	/**
		* @brief 通过红绿灯组id查询停止线对象 id
		* @param traffic_light_group_id
		* @param stopline 传出的停止线对象，若无该id对应的停止线，返回EmptyStopLine{id = "-1"}
		* @return ErrorCode: 0 nothing wrong; otherwise error occurs;
	*/
	ErrorCode query_stopline_by_traffic_light_group_id(const TrafficLightGroupId& traffic_light_group_id, ObjectId& stopline_id) const;

	//----------------------------------------------After ms8
	/*struct ParkingSpace {
		ObjectId id;
		std::vector<XYZ> outline;
		double hdg;
	};*/

	ErrorCode query_all_roads_in_junction(const JunctionId& junction_id, std::vector<RoadId>& road_id_vec) const;

	//ErrorCode query_parking_info(const RoadId& road_id, ParkingSpace& parking_space)  const;


	//----------------------------------------------Auxiliary
	//bool is_road_id_valid(RoadId road_id);
	bool is_lane_id_valid(LaneId lane_id) const;
	bool is_slz_valid(SLZ slz) const;
	/**
			 * @brief: Query the lane's roadmark on both side at specified s positions
			 * @param lane_id: The input lane global id
			 * @param s: The querying position s
			 * @param road_mark_pair: (left roadmark, right roadmark), roadmark value are written in string like  					 		 * 						  "{$type} {$color}"
			 * @return kOK:success, otherwise: failed
			*/
	ErrorCode query_lane_road_mark(const LaneId& lane_id, double s,std::pair<std::string, std::string>& road_mark_pair) const;

	ErrorCode calc_spiral_points(const TracePoint& start_point, const TracePoint& end_point, double length, double sampling_spacing, std::vector<TracePoint>& result) const;

	bool is_point_around_road(const RoadId& road_id, const XYZ& xyz, double& distance, SLZ& slz) const;

private:
	class MapImpl;
	MapImpl* map_impl_ap_;

	/**
		     * @brief Copy Operation (just decleared, not implemented)
		     */
	Map(const Map &);
	/**
			 * @brief Copy Operator (just decleared, not implemented)
			 */
	Map &operator=(const Map &);



};

} // namespace zjlmap



#endif // !MAP_H_