数据库表 **dom_settings** 中还有一些额外的设置可用。
请注意，这些设置将覆盖任务初始化文件中的设置。因此，不要在 `mission.sqf` 文件中更改这些变量，而是在 `dom_settings` 表中更改这些变量（如果您使用数据库）。

#### **d_use_sql_settings / 使用 SQL 设置：**
> 默认： true<br/>
> 如果设置为 `true`，则将使用 dom_params2 表中的参数。如果为 `false`，则管理员可以更改服务器大厅中的参数或将使用 `description.ext` 参数值。<br/>
#### **d_db_auto_save / 数据库自动保存：**
> 默认： false<br/>
> 如果设置为 `true`，则每次完成主要目标或解决一个支线任务时，都会自动保存任务进度。<br/>
> 当任务再次开始时，它会自动加载进度。<br/>
> 完成最后一个目标后，任务进度将在数据库中自动删除。
#### **d_reserved_slot / 预留位置：**
> 默认： []<br/>
> 您可以在此处为管理员添加预留插槽，例如 ["d_artop_1"]。 意味着，当玩家没有以管理员身份登录并选择这样的插槽时，他/她将被踢到服务器大厅<br/>
#### **d_uid_reserved_slots / UID 预留位置：**  
#### **d_uids_for_reserved_slots / UID 预留位置：**
> 默认： (for both): [] <br/>
> 几乎与 `d_reserved_slot` 相同，除了您可以在 `d_uids_for_reserved_slots` 中为这些插槽添加 `A3 UID`，因此非管理员玩家也有保留插槽<br/>
#### **d_tt_points / ：积分**
> 默认： [30,7,15,5,10,5,10,4,2]<br/>
> `PvPvE` `TT` 版本的特殊积分<br/>
> - 30, // 主要目标获胜队的积分<br/>
> - 7, // 如果平局得分（主要目标）<br/>
> - 15, // 摧毁主要目标无线电塔的积分<br/>
> - 5, // 主要目标任务点数<br/>
> - 10, // 支线任务积分<br/>
> - 5, // 占领营地的点数（主要目标）<br/>
> - 10, // 再次失去山地营地时被减去的分数<br/>
> - 4, // 摧毁其他团队车辆的积分<br/>
> - 2 // 击杀其他团队队员的积分<br/>
#### **d_cas_available_time / `CAS`（近距离空中支援）冷却时间**
> 默认： 600 (秒)<br/>
> `CAS`（近距离空中支援） 再次可用所需的时间<br/>
#### **d_ranked_a / 排名：**
> 默认： [20,[3,2,1,0],10,3,10,10,20,3,["Corporal","Sergeant","Lieutenant","Lieutenant","Sergeant","Corporal"],30,400,10,200,20,10,5,20,4,1,20,20,10,20]<br/>
> `d_ranked_a` 用于排名版本和一些值（如果找到 SQL 数据库且排名未打开）<br/>
> - 20, // 工程师必须修理车辆加油的要点<br/>
> - [3,2,1,0], // 工程师因修理飞行器、坦克、汽车等而获得的积分<br/>
> - 10, // 炮兵操作员进行攻击所需的分数<br/>
> - 3, // AI版中招募一名士兵的所需分数<br/>
> - 10, // 玩家参加 AAHALO 跳伞所需的分数<br/>
> - 10, // 因在 MHQ 创建车辆而减去的分数<br/>
> - 20, // 在 MHQ 创建车辆所需的分数<br/>
> - 3, // 如果有人在他的 Mash（陆军流动外科医院） 中治愈，医生会得到点数<br/>
> - ["Corporal","Sergeant","Lieutenant","Lieutenant","Sergeant","Corporal"], // 驾驶不同车辆所需的等级，从以下开始：某种轮式 APC（装甲运兵车）、某种坦克、某种直升机（最初的 4 架直升机除外）、飞机、船舶、静态武器<br/>
> - 30, // 如果玩家在主要目标范围内的 xxx 米被清除，则会增加分数<br/>
> - 400, // 玩家必须进入的范围才能获得主要目标加分数<br/>
> - 10, // 如果玩家在 支线任务 的范围内是 xxx 米，则在 支线任务 解决时添加的分数<br/>
> - 200, // 玩家必须进入的范围才能获得支线任务加分数<br/>
> - 20, // 工程师重建基地支持建筑所需的分数<br/>
> - 10, // 不再使用了！！！之前建造 MG（重机枪）掩体 需要积分<br/>
> - 5, // AI 排名需要的分数才能叫到空中出租车<br/>
> - 20, // 呼叫空投所需的积分<br/>
> - 4, // 医疗兵在治愈另一个单位时获得的分数<br/>
> - 1, // 玩家在运送他人时获得的分数<br/>
> - 20, // 激活卫星视图所需的分数<br/>
> - 20, // 构建 FARP（前沿补给点） 所需的积分（工程师）<br/>
> - 10, // 玩家因复活另一名玩家而获得的分数<br/>
> - 20, // points a Squad Leader needs for CAS<br/>
> - 20  // points a player gets for bringing a wreck to the repair point<br/>
#### **d_points_needed**
> 默认： [20,50,90,140,200,270,500]<br/>
> Points needed for to progress rank (Corporal, Sergeant, Lieutenant, Captain, Major, Colonel and General).<br/>
> In non ranked version this is just cosmetics<br><br/>
#### **d_points_needed_db**
> 默认： [500,2000,5000,9000,14000,20000,30000]<br/>
> Same as d_points_needed, but as player stats like score is saved and added to a database it needs a little bit more higher score to make it interesting<br/>
#### **d_ai_groups_respawn_time**
> 默认： [250,150,320,170]<br/>
> These are the base and min respawn times for vehicle and inf groups at main targets (player numbers also count)<br/>
> Inf base time, inf min time, vehicle base time, vehicle min time, all in seconds<br/>
> Means, inf base time minus number of players but at least wait 150 to respawn a group, same for vehicles<br/>
#### **d_set_pl_score_db**
> 默认： true<br/>
> If set to false player score will not be saved to the database but will always be 0 when a Domination mission starts<br/>
#### **d_launcher_cooldown**
> 默认： 120<br/>
> Launcher cooldown time when a player fires a guided launcher. If set to 0 there will be no cooldown time<br/>
#### **d_number_attack_planes**
> 默认： 1<br/>
> Number of attack planes simultaneously over the main target<br/>
#### **d_number_attack_choppers**
> 默认： 1<br/>
> Number of attack choppers simultaneously over the main target<br/>
#### **d_number_light_attack_choppers**
> 默认： 1<br/>
> Number of light attack choppers simultaneously over the main target<br/>
#### **d_number_attack_uavs**
> 默认： 1<br/>
> Number of UAVs simultaneously over the main target<br/>
#### **d_noambient_bf_sounds**
> 默认： false<br/>
> If set to true it dsiables the ambient sound at main targets<br/>
#### **d_time_until_next_sidemission**
> 默认： [[10,300],[20,400],[30,500],[500,600]]<br/>
> 10 名玩家需要 300 秒，20 名玩家需要 400 秒，以此类推<br/>
#### **d_uids_def_choppers**
> 默认： []<br/>
> Add player UIDs from players who are allowed too fly the initial base choppers; for Example: ["784938984678349"]; Empty = no check<br/>