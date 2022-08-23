/**
 * @Author: YunKai Xia
 * @Date:   2022-06-15 16:18:15
 * @Last Modified by:   YunKai Xia
 * @Last Modified time: 2022-06-17 23:43:25
 */
#include <math.h>

#include <iostream>
#include <vector>

namespace shenlan {
namespace control {
class ReferenceLine {
 public:
  ReferenceLine(const std::vector<std::pair<double, double>>& xy_points);
  ~ReferenceLine() = default;

  bool ComputePathProfile(std::vector<double>* headings,
                          std::vector<double>* accumulated_s,
                          std::vector<double>* kappas,
                          std::vector<double>* dkappas);

 private:
  std::vector<std::pair<double, double>> xy_points_;
};

}  // namespace control
}  // namespace shenlan