#include "map.h"
#include "common.h"
#include "reference_line.h"

using namespace std;

// 构建reference_line
int main(int argc, char** argv) {
    // // Construct the reference line
    std::shared_ptr<zjlmap::Map> map_data_ = std::make_shared<zjlmap::Map>();       // 构建map地图指针   
    int handle = 0;
    zjlmap::ErrorCode ec =
    map_data_->load("/home/li/lqr_ws/src/maps/SingleLaneRoad.xodr", handle);       // 加载地图文件
    ROS_INFO("I heard: [%d]", ec);

    zjlmap::LaneId lane_id(0, 0, 0);     // 结构体 {road_id, section_idx, local_id} 描述定位某一段lane
    zjlmap::LaneInfo lane_info = map_data_->query_lane_info(lane_id);
    std::vector<zjlmap::TracePoint> reference_line;
    
    map_data_->calc_lane_center_line_curv(lane_id, lane_info.begin,
    lane_info.end, 0.25, reference_line);


    for (size_t i=0; i<reference_line.size(); i++)
    {
        ROS_INFO("reference pt %d,  x: %f, y: %f", i, reference_line[i].x,
        reference_line[i].y);
    }

    std::ofstream target_line_cout(
        "/home/li/lqr_ws/src/referenceline/data/SingleLaneRoad.txt");
    target_line_cout.setf(std::ios::fixed, std::ios::floatfield);
    target_line_cout.precision(2);
    for (size_t i = 0; i < reference_line.size(); i++) {
        target_line_cout << reference_line[i].y << "  "
                        << reference_line[i].x << std::endl;
    }
    target_line_cout.close();
}