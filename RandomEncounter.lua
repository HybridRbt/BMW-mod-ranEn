local RandomEncounter = {}

-- 每只怪随机刷怪的概率 50 即为 百分之50， 最大100 最小0
-- 数字 不要加引号 加了用不了
RandomEncounter.RandomRate = 30

-- 每只怪 随机刷怪的数量 Min为最小随机数 Max 为最大随机数
-- 举例 Min 为 1 Max 为 5 则 每次在 1-5个之间随机
-- 数字 不要加引号 加了用不了
RandomEncounter.RandomCount = {
    Min = 1,
    Max = 2
}

RandomEncounter.MonsterList = {
--杂兵
['001'] = "/Game/00Main/Design/Units/FTT/TAMER_ftt_shibing_01.TAMER_ftt_shibing_01_C", --夜叉奴	#ERROR!
['004'] = "/Game/00Main/Design/Units/GYCY/TAMER_gycy_huangpaolang.TAMER_gycy_huangpaolang_C", --狼护法	小怪
['005'] = "/Game/00Main/Design/Units/GYCY/TAMER_gycy_lang_01_online.TAMER_gycy_lang_01_online_C", --比较大的狼怪（无影神图）	小怪
['006'] = "/Game/00Main/Design/Units/GYCY/TAMER_gycy_lang_01.TAMER_gycy_lang_01_C", --狼侍卫	小怪
['007'] = "/Game/00Main/Design/Units/GYCY/TAMER_gycy_lang_03_huoba.TAMER_gycy_lang_03_huoba_C", --狼刺客 	小怪
['008'] = "/Game/00Main/Design/Units/GYCY/TAMER_gycy_lang_03.TAMER_gycy_lang_03_C", --狼斥候	小怪
['009'] = "/Game/00Main/Design/Units/GYCY/TAMER_gycy_lang_05.TAMER_gycy_lang_05_C", --狼剑客	小怪
['010'] = "/Game/00Main/Design/Units/GYCY/TAMER_gycy_lang_06.TAMER_gycy_lang_06_C", --狼力士	小怪
['011'] = "/Game/00Main/Design/Units/GYCY/TAMER_gycy_lang_07a.TAMER_gycy_lang_07a_C", --狼校卫	小怪
['013'] = "/Game/00Main/Design/Units/GYCY/TAMER_gycy_lang_08.TAMER_gycy_lang_08_C", -- 狼弓手	小怪
['014'] = "/Game/00Main/Design/Units/GYCY/TAMER_gycy_seng_01.TAMER_gycy_seng_01_C", --提炉僧	小怪
['016'] = "/Game/00Main/Design/Units/GYCY/TAMER_gycy_seng_03.TAMER_gycy_seng_03_C", --支应僧	小怪
['019'] = "/Game/00Main/Design/Units/GYCY/TAMER_gycy_tufei_01.TAMER_gycy_tufei_01_C", --戒刀僧	小怪
['020'] = "/Game/00Main/Design/Units/GYCY/TAMER_gycy_wa_02.TAMER_gycy_wa_02_C", --小呱呱	小怪
['021'] = "/Game/00Main/Design/Units/GYCY/TAMER_gycy_yaxiangke.TAMER_gycy_yaxiangke_C", --鸦香客	小怪
['025'] = "/Game/00Main/Design/Units/HFM/TAMER_hfm_ganshi_01a_invisible_01.TAMER_hfm_ganshi_01a_invisible_01_C", --干尸	小怪
['026'] = "/Game/00Main/Design/Units/HFM/TAMER_hfm_ganshi_01a_invisible_02.TAMER_hfm_ganshi_01a_invisible_02_C", --干尸	小怪
['027'] = "/Game/00Main/Design/Units/HFM/TAMER_hfm_ganshi_01a.TAMER_hfm_ganshi_01a_C", --干尸（跪地起身）	小怪
['030'] = "/Game/00Main/Design/Units/HFM/TAMER_hfm_hjbow_01a_daremove.TAMER_hfm_hjbow_01a_daremove_C", --阴兵 弓手	小怪
['031'] = "/Game/00Main/Design/Units/HFM/TAMER_hfm_hjbow_01a.TAMER_hfm_hjbow_01a_C", --阴兵 弓手	小怪
['041'] = "/Game/00Main/Design/Units/HFM/TAMER_hfm_shu_04a_aggressive.TAMER_hfm_shu_04a_aggressive_C", --鼬侍郎	小怪
['042'] = "/Game/00Main/Design/Units/HFM/TAMER_hfm_shu_04a_negative.TAMER_hfm_shu_04a_negative_C", --鼬侍郎	小怪
['043'] = "/Game/00Main/Design/Units/HFM/TAMER_hfm_shu_04a.TAMER_hfm_shu_04a_C", --鼬侍郎	小怪
['044'] = "/Game/00Main/Design/Units/HFM/TAMER_hfm_shu_05a.TAMER_hfm_shu_05a_C", --鼠校卫	小怪
['048'] = "/Game/00Main/Design/Units/HFM/TAMER_HFM_wa_02.TAMER_HFM_wa_02_C", --小呱呱	小怪
['049'] = "/Game/00Main/Design/Units/HFM/TAMER_hfm_xunshangui_01a.TAMER_hfm_xunshangui_01a_C", --巡山鬼	小怪
['050'] = "/Game/00Main/Design/Units/HFM/TAMER_lys_ganshi_01a_stupasdungeon.TAMER_lys_ganshi_01a_stupasdungeon_C", --干尸	小怪
['051'] = "/Game/00Main/Design/Units/HFM/TAMER_lys_ganshi_01a.TAMER_lys_ganshi_01a_C", --干尸	小怪
['052'] = "/Game/00Main/Design/Units/HYS/TAMER_hys_ganshi_02a.TAMER_hys_ganshi_02a_C", --阴兵 焦尸	小怪
['053'] = "/Game/00Main/Design/Units/HYS/TAMER_hys_huijin_b.TAMER_hys_huijin_b_C", --阴兵黑脸鬼	小怪
['054'] = "/Game/00Main/Design/Units/HYS/TAMER_hys_huijing.TAMER_hys_huijing_C", --阴兵力士	小怪
['072'] = "/Game/00Main/Design/Units/HYS/TAMER_hys_techushi_01.TAMER_hys_techushi_01_C", --牛侍长	小怪
['073'] = "/Game/00Main/Design/Units/HYS/TAMER_hys_techushi_02.TAMER_hys_techushi_02_C", --牛校卫	小怪
['074'] = "/Game/00Main/Design/Units/HYS/TAMER_hys_techushi_03.TAMER_hys_techushi_03_C", --牛力士	小怪
['075'] = "/Game/00Main/Design/Units/HYS/TAMER_hys_xiaoyao_01a.TAMER_hys_xiaoyao_01a_C", --冻饿鬼	小怪
['078'] = "/Game/00Main/Design/Units/HYS/TAMER_hys_yexungui_01.TAMER_hys_yexungui_01_C", --幽灯鬼	小怪
['080'] = "/Game/00Main/Design/Units/HYS/TAMER_hys_yinbingniumo_01.TAMER_hys_yinbingniumo_01_C", --阴兵火牛	小怪
['083'] = "/Game/00Main/Design/Units/LYS/TAMER_lys_chifagui_01a_sit.TAMER_lys_chifagui_01a_sit_C", --赤发鬼	小怪
['084'] = "/Game/00Main/Design/Units/LYS/TAMER_lys_chifagui_01a.TAMER_lys_chifagui_01a_C", --赤发鬼	小怪
['086'] = "/Game/00Main/Design/Units/LYS/TAMER_lys_frozenmon_02_dungeon.TAMER_lys_frozenmon_02_dungeon_C", --雪僵尸（棍）	小怪
['087'] = "/Game/00Main/Design/Units/LYS/TAMER_lys_frozenmon_02.TAMER_lys_frozenmon_02_C", --雪僵尸（棍）	小怪
['088'] = "/Game/00Main/Design/Units/LYS/TAMER_lys_frozenmon_02.TAMER_lys_frozenmon_02_C", --雪僵尸（棍）	小怪
['089'] = "/Game/00Main/Design/Units/LYS/TAMER_lys_frozenmon_dungeon.TAMER_lys_frozenmon_dungeon_C", --雪僵尸（刀）	小怪
['090'] = "/Game/00Main/Design/Units/LYS/TAMER_lys_frozenmon.TAMER_lys_frozenmon_C", --雪僵尸（刀）	小怪
['092'] = "/Game/00Main/Design/Units/LYS/TAMER_lys_hongpaoshu.TAMER_lys_hongpaoshu_C", --鼠禁卫	小怪
['093'] = "/Game/00Main/Design/Units/LYS/TAMER_LYS_JieDaoSeng.TAMER_LYS_JieDaoSeng_C", --戒刀僧	小怪
['094'] = "/Game/00Main/Design/Units/LYS/TAMER_LYS_mangseng_02a.TAMER_LYS_mangseng_02a_C", --监院僧	小怪
['099'] = "/Game/00Main/Design/Units/LYS/TAMER_lys_shuahouseng.TAMER_lys_shuahouseng_C", --迎客僧	
['100'] = "/Game/00Main/Design/Units/LYS/TAMER_lys_wa_02.TAMER_lys_wa_02_C", --小呱呱	小怪
['103'] = "/Game/00Main/Design/Units/LYS/TAMER_lys_yaxiangke.TAMER_lys_yaxiangke_C", --鸦香客	小怪
['107'] = "/Game/00Main/Design/Units/MGD/TAMER_mgd_tianbing_01_hgs_NoGroupAI.TAMER_mgd_tianbing_01_hgs_NoGroupAI_C", --鹰天兵(标准)	小怪
['108'] = "/Game/00Main/Design/Units/MGD/TAMER_mgd_tianbing_01_hgs.TAMER_mgd_tianbing_01_hgs_C", --鹰天兵(标准)	小怪
['109'] = "/Game/00Main/Design/Units/MGD/TAMER_mgd_tianbing_01.TAMER_mgd_tianbing_01_C", --鹰天兵(标准)	小怪
['110'] = "/Game/00Main/Design/Units/MGD/Tamer_mgd_tianbing_02.Tamer_mgd_tianbing_02_C", --犬天兵(标准)	小怪
['113'] = "/Game/00Main/Design/Units/PSD/TAMER_psd_baijiangcan_01.TAMER_psd_baijiangcan_01_C", --琴螂幼虫(小)	小怪
['114'] = "/Game/00Main/Design/Units/PSD/TAMER_psd_baijiangcan_03.TAMER_psd_baijiangcan_03_C", --琴螂幼虫(大)	小怪
['115'] = "/Game/00Main/Design/Units/PSD/TAMER_psd_chong_01.TAMER_psd_chong_01_C", --虫校尉	小怪
['123'] = "/Game/00Main/Design/Units/PSD/TAMER_psd_daoshi_01_zys.TAMER_psd_daoshi_01_zys_C", --拂尘道士	小怪
['124'] = "/Game/00Main/Design/Units/PSD/TAMER_psd_daoshi_01.TAMER_psd_daoshi_01_C", --拂尘道士	小怪
['125'] = "/Game/00Main/Design/Units/PSD/TAMER_psd_daoshi_02.TAMER_psd_daoshi_02_C", --御剑道士	小怪
['126'] = "/Game/00Main/Design/Units/PSD/Tamer_PSD_daoshi_03_zys.Tamer_PSD_daoshi_03_zys_C", --执杖道士	小怪
['127'] = "/Game/00Main/Design/Units/PSD/Tamer_PSD_daoshi_03.Tamer_PSD_daoshi_03_C", --执杖道士	小怪
['128'] = "/Game/00Main/Design/Units/PSD/TAMER_psd_duchongsishi.TAMER_psd_duchongsishi_C", --虫羽士	小怪
['130'] = "/Game/00Main/Design/Units/PSD/TAMER_psd_huangchong_01_fuchong.TAMER_psd_huangchong_01_fuchong_C", --蜢虫精	小怪
['131'] = "/Game/00Main/Design/Units/PSD/TAMER_psd_huangchong_01.TAMER_psd_huangchong_01_C", --蜢虫精	小怪
['132'] = "/Game/00Main/Design/Units/PSD/TAMER_psd_hutoushe_01.TAMER_psd_hutoushe_01_C", --蛇捕头	小怪
['136'] = "/Game/00Main/Design/Units/PSD/Tamer_PSD_she_03.Tamer_PSD_she_03_C", --蛇司药	小怪
['138'] = "/Game/00Main/Design/Units/PSD/TAMER_psd_xiaozhizhu_01_spawned.TAMER_psd_xiaozhizhu_01_spawned_C", --石蛛	小怪
['139'] = "/Game/00Main/Design/Units/PSD/TAMER_psd_xiaozhizhu_01.TAMER_psd_xiaozhizhu_01_C", --石蛛1	小怪
['140'] = "/Game/00Main/Design/Units/PSD/TAMER_psd_xiaozhizhu_02.TAMER_psd_xiaozhizhu_02_C", --石蛛2	小怪
['141'] = "/Game/00Main/Design/Units/PSD/TAMER_psd_xiaozhizhu_03_melee.TAMER_psd_xiaozhizhu_03_melee_C", --石蛛3	小怪
['142'] = "/Game/00Main/Design/Units/PSD/TAMER_psd_xiaozhizhu_04_melee.TAMER_psd_xiaozhizhu_04_melee_C", --石蛛4	小怪
['147'] = "/Game/00Main/Design/Units/PSD/TAMER_zys_wa_02.TAMER_zys_wa_02_C", --小呱呱	小怪
['148'] = "/Game/00Main/Design/Units/HFM/TAMER_hfm_niu_01_mountaintop.TAMER_hfm_niu_01_mountaintop_C", --牯护院	精英
['149'] = "/Game/00Main/Design/Units/HFM/TAMER_hfm_maoyou_02a.TAMER_hfm_maoyou_02a_C", --卧虎寺地窖猫妖	精英

}

return RandomEncounter