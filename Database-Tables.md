当您从 数据库管理工具（Navicat 或者 HeidiSQL） 执行 `Domination.sql` 时，将创建以下数据库表：

## dom_params2

> 保存来自 description.ext（类参数）的所有参数。任务需要启动一次以使用 description.ext 中的所有可用参数填充表格，之后，您可以更改 dom_params2 表中的参数

## dom_settings

> 额外的非参数设置。检查 Wiki 中的 [其他数据库设置](Database-Additional-Settings.md) 页面以获取所有可用条目。dom_settings 是唯一一个填充了变量名和值的表。

## missionsave

## missionsavett

> 根据您玩的版本（普通合作 或 PvPvE TT），游戏进度会保存在这些表格中

## players

> 玩家统计数据将保存到玩家表。

```markdown
    uid: Game UID (不曾用过)
    name: 玩家连接时使用的名称
    playerid: 玩家编号
    playtime: 玩家在服务器上玩的时间
    infkills: 玩家杀死的步兵单位数量
    softveckills: 被玩家摧毁带轮子的载具
    armorkills: 被玩家摧毁的装甲车
    airkills: 被玩家摧毁的飞机
    deaths: 玩家死亡的频率
    totalscore: 总得分
    radiotowerkills: 一个玩家摧毁了多少个无线电塔
    numplayedonserver: 玩家在服务器上玩的频率
    campscaptured: 玩家在主要目标上占领了多少个营地
    mtsmkills: 玩家解决的主要目标任务数量
    teamkills: 友军误杀数
    revives: 玩家复活了多少玩家
```