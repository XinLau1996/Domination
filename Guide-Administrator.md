# 概述

`Domination` 有很多很多的任务参数。此处的资源有助于了解游戏配置如何影响游戏玩法和服务器性能。

# 任务参数

要查看具有详细描述的任务参数的完整列表，请参阅[参数说明](Parameter.md)。

* 根据装甲设置自动平衡一些步兵数量。
* 请注意默认的 `AI` 难度并进行相应设置。
* 平民可能被启用。重点区域是随机生成的。这对服务器性能有负面影响。
* 可以根据地形和可用结构使用 `离散数字` 或 `自动计算`（`低` / `中` / `高`）来设置每个步兵类别的组数。

**敌方团体**

主目标区域中的敌方组数由任务参数确定,为 `离散数字` 或 `自动计算`（`低` / `中` / `高`）。

**敌方类型 - 步兵**

* 占据 - 生成在建筑物内，可以立即自由移动
* 埋伏 - 生成在建筑物内，开火时可以自由移动，在 `69米` 内被触发。
* 坚守 - 生成在建筑物内，永不移动
* 狙击 - 生成在建筑物或屋顶的高海拔位置
* 警卫 - 在目标区域生成一个小营地
* 静态警卫 - 在沙袋中生成 MG（重机枪）或 GL（榴弹发射器）
* 巡逻 - 生成并跟随随机路径点
* 观察 - 生成并跟随随机路径点，如果玩家有视线，则呼叫炮击或空袭

**敌方类型 - 载具**

* 警卫 - 坦克、履带式和轮式APC（装甲运兵车）、MG（重机枪）卡车 或 GL（榴弹发射器）卡车
* 静态警卫 - 坦克、履带式APC（装甲运兵车）、防空车
* 巡逻 - 坦克、履带式和轮式APC（装甲运兵车）、MG（重机枪）卡车 或 GL（榴弹发射器）卡车、侦查无人机

# 数据库设置

`Domination` 可以使用正确配置的数据库来持久化数据。设置数据库是可选的。`Domination` 将在没有任何外部数据库的情况下正常运行。

使用连接的数据库，服务器重启后将保留以下 `Domination` 数据：

* 任务参数
* 任务进度
* 得分和排名

可以在 [数据库设置](Database-Setup.md) 中找到为 `Domination` 配置数据库的更多详细说明

# 设置任务配置 `server.cfg`

编辑服务器配置文件 `server.cfg` 并设置您喜欢的 `Domination` 配置。这是通过将值直接放入服务器文本文件来将配置存储在外部数据库中的替代方法。

例:

**server.cfg**
```
class Missions
{
  class Domination
  {
    template = "co40_domination_4_54_blufor.altis";
    difficulty = "Recruit";
    class Params
    {
      d_with_targetselect_count = 9999; // select more targets!
      d_withsandstorm = 1;  // I don't like sand. It's all coarse and rough and irritating.
    };
  };
};
```