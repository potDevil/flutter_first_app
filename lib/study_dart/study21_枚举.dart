///Created by fuzhi on 2019-05-28

void main() {
  Season currentSeason = Season.spring;
  print(currentSeason.index);

  switch (currentSeason) {
    case Season.spring:
      print("1-3月");
      break;
    case Season.summer:
      print("4-6月");
      break;
    case Season.autumn:
      print("7-9月");
      break;
    case Season.winter:
      print("10-12月");
      break;
  }
}

enum Season { spring, summer, autumn, winter }
