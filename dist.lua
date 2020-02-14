--注册路径
HLUA_DEBUG = false
if (HLUA_DEBUG) then
    console.enable = true
end
JASS_MAX_ARRAY_SIZE = 8192
PLAYER_NEUTRAL_PASSIVE = 15
PLAYER_NEUTRAL_AGGRESSIVE = 12
PLAYER_COLOR_RED = cj.ConvertPlayerColor(0)
PLAYER_COLOR_BLUE = cj.ConvertPlayerColor(1)
PLAYER_COLOR_CYAN = cj.ConvertPlayerColor(2)
PLAYER_COLOR_PURPLE = cj.ConvertPlayerColor(3)
PLAYER_COLOR_YELLOW = cj.ConvertPlayerColor(4)
PLAYER_COLOR_ORANGE = cj.ConvertPlayerColor(5)
PLAYER_COLOR_GREEN = cj.ConvertPlayerColor(6)
PLAYER_COLOR_PINK = cj.ConvertPlayerColor(7)
PLAYER_COLOR_LIGHT_GRAY = cj.ConvertPlayerColor(8)
PLAYER_COLOR_LIGHT_BLUE = cj.ConvertPlayerColor(9)
PLAYER_COLOR_AQUA = cj.ConvertPlayerColor(10)
PLAYER_COLOR_BROWN = cj.ConvertPlayerColor(11)
RACE_HUMAN = cj.ConvertRace(1)
RACE_ORC = cj.ConvertRace(2)
RACE_UNDEAD = cj.ConvertRace(3)
RACE_NIGHTELF = cj.ConvertRace(4)
RACE_DEMON = cj.ConvertRace(5)
RACE_OTHER = cj.ConvertRace(7)
PLAYER_GAME_RESULT_VICTORY = cj.ConvertPlayerGameResult(0)
PLAYER_GAME_RESULT_DEFEAT = cj.ConvertPlayerGameResult(1)
PLAYER_GAME_RESULT_TIE = cj.ConvertPlayerGameResult(2)
PLAYER_GAME_RESULT_NEUTRAL = cj.ConvertPlayerGameResult(3)
ALLIANCE_PASSIVE = cj.ConvertAllianceType(0)
ALLIANCE_HELP_REQUEST = cj.ConvertAllianceType(1)
ALLIANCE_HELP_RESPONSE = cj.ConvertAllianceType(2)
ALLIANCE_SHARED_XP = cj.ConvertAllianceType(3)
ALLIANCE_SHARED_SPELLS = cj.ConvertAllianceType(4)
ALLIANCE_SHARED_VISION = cj.ConvertAllianceType(5)
ALLIANCE_SHARED_CONTROL = cj.ConvertAllianceType(6)
ALLIANCE_SHARED_ADVANCED_CONTROL = cj.ConvertAllianceType(7)
ALLIANCE_RESCUABLE = cj.ConvertAllianceType(8)
ALLIANCE_SHARED_VISION_FORCED = cj.ConvertAllianceType(9)
VERSION_REIGN_OF_CHAOS = cj.ConvertVersion(0)
VERSION_FROZEN_THRONE = cj.ConvertVersion(1)
ATTACK_TYPE_NORMAL = cj.ConvertAttackType(0)
ATTACK_TYPE_MELEE = cj.ConvertAttackType(1)
ATTACK_TYPE_PIERCE = cj.ConvertAttackType(2)
ATTACK_TYPE_SIEGE = cj.ConvertAttackType(3)
ATTACK_TYPE_MAGIC = cj.ConvertAttackType(4)
ATTACK_TYPE_CHAOS = cj.ConvertAttackType(5)
ATTACK_TYPE_HERO = cj.ConvertAttackType(6)
DAMAGE_TYPE_UNKNOWN = cj.ConvertDamageType(0)
DAMAGE_TYPE_NORMAL = cj.ConvertDamageType(4)
DAMAGE_TYPE_ENHANCED = cj.ConvertDamageType(5)
DAMAGE_TYPE_FIRE = cj.ConvertDamageType(8)
DAMAGE_TYPE_COLD = cj.ConvertDamageType(9)
DAMAGE_TYPE_LIGHTNING = cj.ConvertDamageType(10)
DAMAGE_TYPE_POISON = cj.ConvertDamageType(11)
DAMAGE_TYPE_DISEASE = cj.ConvertDamageType(12)
DAMAGE_TYPE_DIVINE = cj.ConvertDamageType(13)
DAMAGE_TYPE_MAGIC = cj.ConvertDamageType(14)
DAMAGE_TYPE_SONIC = cj.ConvertDamageType(15)
DAMAGE_TYPE_ACID = cj.ConvertDamageType(16)
DAMAGE_TYPE_FORCE = cj.ConvertDamageType(17)
DAMAGE_TYPE_DEATH = cj.ConvertDamageType(18)
DAMAGE_TYPE_MIND = cj.ConvertDamageType(19)
DAMAGE_TYPE_PLANT = cj.ConvertDamageType(20)
DAMAGE_TYPE_DEFENSIVE = cj.ConvertDamageType(21)
DAMAGE_TYPE_DEMOLITION = cj.ConvertDamageType(22)
DAMAGE_TYPE_SLOW_POISON = cj.ConvertDamageType(23)
DAMAGE_TYPE_SPIRIT_LINK = cj.ConvertDamageType(24)
DAMAGE_TYPE_SHADOW_STRIKE = cj.ConvertDamageType(25)
DAMAGE_TYPE_UNIVERSAL = cj.ConvertDamageType(26)
WEAPON_TYPE_WHOKNOWS = cj.ConvertWeaponType(0)
WEAPON_TYPE_METAL_LIGHT_CHOP = cj.ConvertWeaponType(1)
WEAPON_TYPE_METAL_MEDIUM_CHOP = cj.ConvertWeaponType(2)
WEAPON_TYPE_METAL_HEAVY_CHOP = cj.ConvertWeaponType(3)
WEAPON_TYPE_METAL_LIGHT_SLICE = cj.ConvertWeaponType(4)
WEAPON_TYPE_METAL_MEDIUM_SLICE = cj.ConvertWeaponType(5)
WEAPON_TYPE_METAL_HEAVY_SLICE = cj.ConvertWeaponType(6)
WEAPON_TYPE_METAL_MEDIUM_BASH = cj.ConvertWeaponType(7)
WEAPON_TYPE_METAL_HEAVY_BASH = cj.ConvertWeaponType(8)
WEAPON_TYPE_METAL_MEDIUM_STAB = cj.ConvertWeaponType(9)
WEAPON_TYPE_METAL_HEAVY_STAB = cj.ConvertWeaponType(10)
WEAPON_TYPE_WOOD_LIGHT_SLICE = cj.ConvertWeaponType(11)
WEAPON_TYPE_WOOD_MEDIUM_SLICE = cj.ConvertWeaponType(12)
WEAPON_TYPE_WOOD_HEAVY_SLICE = cj.ConvertWeaponType(13)
WEAPON_TYPE_WOOD_LIGHT_BASH = cj.ConvertWeaponType(14)
WEAPON_TYPE_WOOD_MEDIUM_BASH = cj.ConvertWeaponType(15)
WEAPON_TYPE_WOOD_HEAVY_BASH = cj.ConvertWeaponType(16)
WEAPON_TYPE_WOOD_LIGHT_STAB = cj.ConvertWeaponType(17)
WEAPON_TYPE_WOOD_MEDIUM_STAB = cj.ConvertWeaponType(18)
WEAPON_TYPE_CLAW_LIGHT_SLICE = cj.ConvertWeaponType(19)
WEAPON_TYPE_CLAW_MEDIUM_SLICE = cj.ConvertWeaponType(20)
WEAPON_TYPE_CLAW_HEAVY_SLICE = cj.ConvertWeaponType(21)
WEAPON_TYPE_AXE_MEDIUM_CHOP = cj.ConvertWeaponType(22)
WEAPON_TYPE_ROCK_HEAVY_BASH = cj.ConvertWeaponType(23)
PATHING_TYPE_ANY = cj.ConvertPathingType(0)
PATHING_TYPE_WALKABILITY = cj.ConvertPathingType(1)
PATHING_TYPE_FLYABILITY = cj.ConvertPathingType(2)
PATHING_TYPE_BUILDABILITY = cj.ConvertPathingType(3)
PATHING_TYPE_PEONHARVESTPATHING = cj.ConvertPathingType(4)
PATHING_TYPE_BLIGHTPATHING = cj.ConvertPathingType(5)
PATHING_TYPE_FLOATABILITY = cj.ConvertPathingType(6)
PATHING_TYPE_AMPHIBIOUSPATHING = cj.ConvertPathingType(7)
RACE_PREF_HUMAN = cj.ConvertRacePref(1)
RACE_PREF_ORC = cj.ConvertRacePref(2)
RACE_PREF_NIGHTELF = cj.ConvertRacePref(4)
RACE_PREF_UNDEAD = cj.ConvertRacePref(8)
RACE_PREF_DEMON = cj.ConvertRacePref(16)
RACE_PREF_RANDOM = cj.ConvertRacePref(32)
RACE_PREF_USER_SELECTABLE = cj.ConvertRacePref(64)
MAP_CONTROL_USER = cj.ConvertMapControl(0)
MAP_CONTROL_COMPUTER = cj.ConvertMapControl(1)
MAP_CONTROL_RESCUABLE = cj.ConvertMapControl(2)
MAP_CONTROL_NEUTRAL = cj.ConvertMapControl(3)
MAP_CONTROL_CREEP = cj.ConvertMapControl(4)
MAP_CONTROL_NONE = cj.ConvertMapControl(5)
GAME_TYPE_MELEE = cj.ConvertGameType(1)
GAME_TYPE_FFA = cj.ConvertGameType(2)
GAME_TYPE_USE_MAP_SETTINGS = cj.ConvertGameType(4)
GAME_TYPE_BLIZ = cj.ConvertGameType(8)
GAME_TYPE_ONE_ON_ONE = cj.ConvertGameType(16)
GAME_TYPE_TWO_TEAM_PLAY = cj.ConvertGameType(32)
GAME_TYPE_THREE_TEAM_PLAY = cj.ConvertGameType(64)
GAME_TYPE_FOUR_TEAM_PLAY = cj.ConvertGameType(128)
MAP_FOG_HIDE_TERRAIN = cj.ConvertMapFlag(1)
MAP_FOG_MAP_EXPLORED = cj.ConvertMapFlag(2)
MAP_FOG_ALWAYS_VISIBLE = cj.ConvertMapFlag(4)
MAP_USE_HANDICAPS = cj.ConvertMapFlag(8)
MAP_OBSERVERS = cj.ConvertMapFlag(16)
MAP_OBSERVERS_ON_DEATH = cj.ConvertMapFlag(32)
MAP_FIXED_COLORS = cj.ConvertMapFlag(128)
MAP_LOCK_RESOURCE_TRADING = cj.ConvertMapFlag(256)
MAP_RESOURCE_TRADING_ALLIES_ONLY = cj.ConvertMapFlag(512)
MAP_LOCK_ALLIANCE_CHANGES = cj.ConvertMapFlag(1024)
MAP_ALLIANCE_CHANGES_HIDDEN = cj.ConvertMapFlag(2048)
MAP_CHEATS = cj.ConvertMapFlag(4096)
MAP_CHEATS_HIDDEN = cj.ConvertMapFlag(8192)
MAP_LOCK_SPEED = cj.ConvertMapFlag(8192 * 2)
MAP_LOCK_RANDOM_SEED = cj.ConvertMapFlag(8192 * 4)
MAP_SHARED_ADVANCED_CONTROL = cj.ConvertMapFlag(8192 * 8)
MAP_RANDOM_HERO = cj.ConvertMapFlag(8192 * 16)
MAP_RANDOM_RACES = cj.ConvertMapFlag(8192 * 32)
MAP_RELOADED = cj.ConvertMapFlag(8192 * 64)
MAP_PLACEMENT_RANDOM = cj.ConvertPlacement(0)
MAP_PLACEMENT_FIXED = cj.ConvertPlacement(1)
MAP_PLACEMENT_USE_MAP_SETTINGS = cj.ConvertPlacement(2)
MAP_PLACEMENT_TEAMS_TOGETHER = cj.ConvertPlacement(3)
MAP_LOC_PRIO_LOW = cj.ConvertStartLocPrio(0)
MAP_LOC_PRIO_HIGH = cj.ConvertStartLocPrio(1)
MAP_LOC_PRIO_NOT = cj.ConvertStartLocPrio(2)
MAP_DENSITY_NONE = cj.ConvertMapDensity(0)
MAP_DENSITY_LIGHT = cj.ConvertMapDensity(1)
MAP_DENSITY_MEDIUM = cj.ConvertMapDensity(2)
MAP_DENSITY_HEAVY = cj.ConvertMapDensity(3)
MAP_DIFFICULTY_EASY = cj.ConvertGameDifficulty(0)
MAP_DIFFICULTY_NORMAL = cj.ConvertGameDifficulty(1)
MAP_DIFFICULTY_HARD = cj.ConvertGameDifficulty(2)
MAP_DIFFICULTY_INSANE = cj.ConvertGameDifficulty(3)
MAP_SPEED_SLOWEST = cj.ConvertGameSpeed(0)
MAP_SPEED_SLOW = cj.ConvertGameSpeed(1)
MAP_SPEED_NORMAL = cj.ConvertGameSpeed(2)
MAP_SPEED_FAST = cj.ConvertGameSpeed(3)
MAP_SPEED_FASTEST = cj.ConvertGameSpeed(4)
PLAYER_SLOT_STATE_EMPTY = cj.ConvertPlayerSlotState(0)
PLAYER_SLOT_STATE_PLAYING = cj.ConvertPlayerSlotState(1)
PLAYER_SLOT_STATE_LEFT = cj.ConvertPlayerSlotState(2)
SOUND_VOLUMEGROUP_UNITMOVEMENT = cj.ConvertVolumeGroup(0)
SOUND_VOLUMEGROUP_UNITSOUNDS = cj.ConvertVolumeGroup(1)
SOUND_VOLUMEGROUP_COMBAT = cj.ConvertVolumeGroup(2)
SOUND_VOLUMEGROUP_SPELLS = cj.ConvertVolumeGroup(3)
SOUND_VOLUMEGROUP_UI = cj.ConvertVolumeGroup(4)
SOUND_VOLUMEGROUP_MUSIC = cj.ConvertVolumeGroup(5)
SOUND_VOLUMEGROUP_AMBIENTSOUNDS = cj.ConvertVolumeGroup(6)
SOUND_VOLUMEGROUP_FIRE = cj.ConvertVolumeGroup(7)
GAME_STATE_DIVINE_INTERVENTION = cj.ConvertIGameState(0)
GAME_STATE_DISCONNECTED = cj.ConvertIGameState(1)
GAME_STATE_TIME_OF_DAY = cj.ConvertFGameState(2)
PLAYER_STATE_GAME_RESULT = cj.ConvertPlayerState(0)
PLAYER_STATE_RESOURCE_GOLD = cj.ConvertPlayerState(1)
PLAYER_STATE_RESOURCE_LUMBER = cj.ConvertPlayerState(2)
PLAYER_STATE_RESOURCE_HERO_TOKENS = cj.ConvertPlayerState(3)
PLAYER_STATE_RESOURCE_FOOD_CAP = cj.ConvertPlayerState(4)
PLAYER_STATE_RESOURCE_FOOD_USED = cj.ConvertPlayerState(5)
PLAYER_STATE_FOOD_CAP_CEILING = cj.ConvertPlayerState(6)
PLAYER_STATE_GIVES_BOUNTY = cj.ConvertPlayerState(7)
PLAYER_STATE_ALLIED_VICTORY = cj.ConvertPlayerState(8)
PLAYER_STATE_PLACED = cj.ConvertPlayerState(9)
PLAYER_STATE_OBSERVER_ON_DEATH = cj.ConvertPlayerState(10)
PLAYER_STATE_OBSERVER = cj.ConvertPlayerState(11)
PLAYER_STATE_UNFOLLOWABLE = cj.ConvertPlayerState(12)
PLAYER_STATE_GOLD_UPKEEP_RATE = cj.ConvertPlayerState(13)
PLAYER_STATE_LUMBER_UPKEEP_RATE = cj.ConvertPlayerState(14)
PLAYER_STATE_GOLD_GATHERED = cj.ConvertPlayerState(15)
PLAYER_STATE_LUMBER_GATHERED = cj.ConvertPlayerState(16)
PLAYER_STATE_NO_CREEP_SLEEP = cj.ConvertPlayerState(25)
UNIT_STATE_LIFE = cj.ConvertUnitState(0)
UNIT_STATE_MAX_LIFE = cj.ConvertUnitState(1)
UNIT_STATE_MANA = cj.ConvertUnitState(2)
UNIT_STATE_MAX_MANA = cj.ConvertUnitState(3)
AI_DIFFICULTY_NEWBIE = cj.ConvertAIDifficulty(0)
AI_DIFFICULTY_NORMAL = cj.ConvertAIDifficulty(1)
AI_DIFFICULTY_INSANE = cj.ConvertAIDifficulty(2)
PLAYER_SCORE_UNITS_TRAINED = cj.ConvertPlayerScore(0)
PLAYER_SCORE_UNITS_KILLED = cj.ConvertPlayerScore(1)
PLAYER_SCORE_STRUCT_BUILT = cj.ConvertPlayerScore(2)
PLAYER_SCORE_STRUCT_RAZED = cj.ConvertPlayerScore(3)
PLAYER_SCORE_TECH_PERCENT = cj.ConvertPlayerScore(4)
PLAYER_SCORE_FOOD_MAXPROD = cj.ConvertPlayerScore(5)
PLAYER_SCORE_FOOD_MAXUSED = cj.ConvertPlayerScore(6)
PLAYER_SCORE_HEROES_KILLED = cj.ConvertPlayerScore(7)
PLAYER_SCORE_ITEMS_GAINED = cj.ConvertPlayerScore(8)
PLAYER_SCORE_MERCS_HIRED = cj.ConvertPlayerScore(9)
PLAYER_SCORE_GOLD_MINED_TOTAL = cj.ConvertPlayerScore(10)
PLAYER_SCORE_GOLD_MINED_UPKEEP = cj.ConvertPlayerScore(11)
PLAYER_SCORE_GOLD_LOST_UPKEEP = cj.ConvertPlayerScore(12)
PLAYER_SCORE_GOLD_LOST_TAX = cj.ConvertPlayerScore(13)
PLAYER_SCORE_GOLD_GIVEN = cj.ConvertPlayerScore(14)
PLAYER_SCORE_GOLD_RECEIVED = cj.ConvertPlayerScore(15)
PLAYER_SCORE_LUMBER_TOTAL = cj.ConvertPlayerScore(16)
PLAYER_SCORE_LUMBER_LOST_UPKEEP = cj.ConvertPlayerScore(17)
PLAYER_SCORE_LUMBER_LOST_TAX = cj.ConvertPlayerScore(18)
PLAYER_SCORE_LUMBER_GIVEN = cj.ConvertPlayerScore(19)
PLAYER_SCORE_LUMBER_RECEIVED = cj.ConvertPlayerScore(20)
PLAYER_SCORE_UNIT_TOTAL = cj.ConvertPlayerScore(21)
PLAYER_SCORE_HERO_TOTAL = cj.ConvertPlayerScore(22)
PLAYER_SCORE_RESOURCE_TOTAL = cj.ConvertPlayerScore(23)
PLAYER_SCORE_TOTAL = cj.ConvertPlayerScore(24)
EVENT_GAME_VICTORY = cj.ConvertGameEvent(0)
EVENT_GAME_END_LEVEL = cj.ConvertGameEvent(1)
EVENT_GAME_VARIABLE_LIMIT = cj.ConvertGameEvent(2)
EVENT_GAME_STATE_LIMIT = cj.ConvertGameEvent(3)
EVENT_GAME_TIMER_EXPIRED = cj.ConvertGameEvent(4)
EVENT_GAME_ENTER_REGION = cj.ConvertGameEvent(5)
EVENT_GAME_LEAVE_REGION = cj.ConvertGameEvent(6)
EVENT_GAME_TRACKABLE_HIT = cj.ConvertGameEvent(7)
EVENT_GAME_TRACKABLE_TRACK = cj.ConvertGameEvent(8)
EVENT_GAME_SHOW_SKILL = cj.ConvertGameEvent(9)
EVENT_GAME_BUILD_SUBMENU = cj.ConvertGameEvent(10)
EVENT_PLAYER_STATE_LIMIT = cj.ConvertPlayerEvent(11)
EVENT_PLAYER_ALLIANCE_CHANGED = cj.ConvertPlayerEvent(12)
EVENT_PLAYER_DEFEAT = cj.ConvertPlayerEvent(13)
EVENT_PLAYER_VICTORY = cj.ConvertPlayerEvent(14)
EVENT_PLAYER_LEAVE = cj.ConvertPlayerEvent(15)
EVENT_PLAYER_CHAT = cj.ConvertPlayerEvent(16)
EVENT_PLAYER_END_CINEMATIC = cj.ConvertPlayerEvent(17)
EVENT_PLAYER_UNIT_ATTACKED = cj.ConvertPlayerUnitEvent(18)
EVENT_PLAYER_UNIT_RESCUED = cj.ConvertPlayerUnitEvent(19)
EVENT_PLAYER_UNIT_DEATH = cj.ConvertPlayerUnitEvent(20)
EVENT_PLAYER_UNIT_DECAY = cj.ConvertPlayerUnitEvent(21)
EVENT_PLAYER_UNIT_DETECTED = cj.ConvertPlayerUnitEvent(22)
EVENT_PLAYER_UNIT_HIDDEN = cj.ConvertPlayerUnitEvent(23)
EVENT_PLAYER_UNIT_SELECTED = cj.ConvertPlayerUnitEvent(24)
EVENT_PLAYER_UNIT_DESELECTED = cj.ConvertPlayerUnitEvent(25)
EVENT_PLAYER_UNIT_CONSTRUCT_START = cj.ConvertPlayerUnitEvent(26)
EVENT_PLAYER_UNIT_CONSTRUCT_CANCEL = cj.ConvertPlayerUnitEvent(27)
EVENT_PLAYER_UNIT_CONSTRUCT_FINISH = cj.ConvertPlayerUnitEvent(28)
EVENT_PLAYER_UNIT_UPGRADE_START = cj.ConvertPlayerUnitEvent(29)
EVENT_PLAYER_UNIT_UPGRADE_CANCEL = cj.ConvertPlayerUnitEvent(30)
EVENT_PLAYER_UNIT_UPGRADE_FINISH = cj.ConvertPlayerUnitEvent(31)
EVENT_PLAYER_UNIT_TRAIN_START = cj.ConvertPlayerUnitEvent(32)
EVENT_PLAYER_UNIT_TRAIN_CANCEL = cj.ConvertPlayerUnitEvent(33)
EVENT_PLAYER_UNIT_TRAIN_FINISH = cj.ConvertPlayerUnitEvent(34)
EVENT_PLAYER_UNIT_RESEARCH_START = cj.ConvertPlayerUnitEvent(35)
EVENT_PLAYER_UNIT_RESEARCH_CANCEL = cj.ConvertPlayerUnitEvent(36)
EVENT_PLAYER_UNIT_RESEARCH_FINISH = cj.ConvertPlayerUnitEvent(37)
EVENT_PLAYER_UNIT_ISSUED_ORDER = cj.ConvertPlayerUnitEvent(38)
EVENT_PLAYER_UNIT_ISSUED_POINT_ORDER = cj.ConvertPlayerUnitEvent(39)
EVENT_PLAYER_UNIT_ISSUED_TARGET_ORDER = cj.ConvertPlayerUnitEvent(40)
EVENT_PLAYER_UNIT_ISSUED_UNIT_ORDER = cj.ConvertPlayerUnitEvent(40)
EVENT_PLAYER_HERO_LEVEL = cj.ConvertPlayerUnitEvent(41)
EVENT_PLAYER_HERO_SKILL = cj.ConvertPlayerUnitEvent(42)
EVENT_PLAYER_HERO_REVIVABLE = cj.ConvertPlayerUnitEvent(43)
EVENT_PLAYER_HERO_REVIVE_START = cj.ConvertPlayerUnitEvent(44)
EVENT_PLAYER_HERO_REVIVE_CANCEL = cj.ConvertPlayerUnitEvent(45)
EVENT_PLAYER_HERO_REVIVE_FINISH = cj.ConvertPlayerUnitEvent(46)
EVENT_PLAYER_UNIT_SUMMON = cj.ConvertPlayerUnitEvent(47)
EVENT_PLAYER_UNIT_DROP_ITEM = cj.ConvertPlayerUnitEvent(48)
EVENT_PLAYER_UNIT_PICKUP_ITEM = cj.ConvertPlayerUnitEvent(49)
EVENT_PLAYER_UNIT_USE_ITEM = cj.ConvertPlayerUnitEvent(50)
EVENT_PLAYER_UNIT_LOADED = cj.ConvertPlayerUnitEvent(51)
EVENT_UNIT_DAMAGED = cj.ConvertUnitEvent(52)
EVENT_UNIT_DEATH = cj.ConvertUnitEvent(53)
EVENT_UNIT_DECAY = cj.ConvertUnitEvent(54)
EVENT_UNIT_DETECTED = cj.ConvertUnitEvent(55)
EVENT_UNIT_HIDDEN = cj.ConvertUnitEvent(56)
EVENT_UNIT_SELECTED = cj.ConvertUnitEvent(57)
EVENT_UNIT_DESELECTED = cj.ConvertUnitEvent(58)
EVENT_UNIT_STATE_LIMIT = cj.ConvertUnitEvent(59)
EVENT_UNIT_ACQUIRED_TARGET = cj.ConvertUnitEvent(60)
EVENT_UNIT_TARGET_IN_RANGE = cj.ConvertUnitEvent(61)
EVENT_UNIT_ATTACKED = cj.ConvertUnitEvent(62)
EVENT_UNIT_RESCUED = cj.ConvertUnitEvent(63)
EVENT_UNIT_CONSTRUCT_CANCEL = cj.ConvertUnitEvent(64)
EVENT_UNIT_CONSTRUCT_FINISH = cj.ConvertUnitEvent(65)
EVENT_UNIT_UPGRADE_START = cj.ConvertUnitEvent(66)
EVENT_UNIT_UPGRADE_CANCEL = cj.ConvertUnitEvent(67)
EVENT_UNIT_UPGRADE_FINISH = cj.ConvertUnitEvent(68)
EVENT_UNIT_TRAIN_START = cj.ConvertUnitEvent(69)
EVENT_UNIT_TRAIN_CANCEL = cj.ConvertUnitEvent(70)
EVENT_UNIT_TRAIN_FINISH = cj.ConvertUnitEvent(71)
EVENT_UNIT_RESEARCH_START = cj.ConvertUnitEvent(72)
EVENT_UNIT_RESEARCH_CANCEL = cj.ConvertUnitEvent(73)
EVENT_UNIT_RESEARCH_FINISH = cj.ConvertUnitEvent(74)
EVENT_UNIT_ISSUED_ORDER = cj.ConvertUnitEvent(75)
EVENT_UNIT_ISSUED_POINT_ORDER = cj.ConvertUnitEvent(76)
EVENT_UNIT_ISSUED_TARGET_ORDER = cj.ConvertUnitEvent(77)
EVENT_UNIT_HERO_LEVEL = cj.ConvertUnitEvent(78)
EVENT_UNIT_HERO_SKILL = cj.ConvertUnitEvent(79)
EVENT_UNIT_HERO_REVIVABLE = cj.ConvertUnitEvent(80)
EVENT_UNIT_HERO_REVIVE_START = cj.ConvertUnitEvent(81)
EVENT_UNIT_HERO_REVIVE_CANCEL = cj.ConvertUnitEvent(82)
EVENT_UNIT_HERO_REVIVE_FINISH = cj.ConvertUnitEvent(83)
EVENT_UNIT_SUMMON = cj.ConvertUnitEvent(84)
EVENT_UNIT_DROP_ITEM = cj.ConvertUnitEvent(85)
EVENT_UNIT_PICKUP_ITEM = cj.ConvertUnitEvent(86)
EVENT_UNIT_USE_ITEM = cj.ConvertUnitEvent(87)
EVENT_UNIT_LOADED = cj.ConvertUnitEvent(88)
EVENT_WIDGET_DEATH = cj.ConvertWidgetEvent(89)
EVENT_DIALOG_BUTTON_CLICK = cj.ConvertDialogEvent(90)
EVENT_DIALOG_CLICK = cj.ConvertDialogEvent(91)
EVENT_GAME_LOADED = cj.ConvertGameEvent(256)
EVENT_GAME_TOURNAMENT_FINISH_SOON = cj.ConvertGameEvent(257)
EVENT_GAME_TOURNAMENT_FINISH_NOW = cj.ConvertGameEvent(258)
EVENT_GAME_SAVE = cj.ConvertGameEvent(259)
EVENT_PLAYER_ARROW_LEFT_DOWN = cj.ConvertPlayerEvent(261)
EVENT_PLAYER_ARROW_LEFT_UP = cj.ConvertPlayerEvent(262)
EVENT_PLAYER_ARROW_RIGHT_DOWN = cj.ConvertPlayerEvent(263)
EVENT_PLAYER_ARROW_RIGHT_UP = cj.ConvertPlayerEvent(264)
EVENT_PLAYER_ARROW_DOWN_DOWN = cj.ConvertPlayerEvent(265)
EVENT_PLAYER_ARROW_DOWN_UP = cj.ConvertPlayerEvent(266)
EVENT_PLAYER_ARROW_UP_DOWN = cj.ConvertPlayerEvent(267)
EVENT_PLAYER_ARROW_UP_UP = cj.ConvertPlayerEvent(268)
EVENT_PLAYER_UNIT_SELL = cj.ConvertPlayerUnitEvent(269)
EVENT_PLAYER_UNIT_CHANGE_OWNER = cj.ConvertPlayerUnitEvent(270)
EVENT_PLAYER_UNIT_SELL_ITEM = cj.ConvertPlayerUnitEvent(271)
EVENT_PLAYER_UNIT_SPELL_CHANNEL = cj.ConvertPlayerUnitEvent(272)
EVENT_PLAYER_UNIT_SPELL_CAST = cj.ConvertPlayerUnitEvent(273)
EVENT_PLAYER_UNIT_SPELL_EFFECT = cj.ConvertPlayerUnitEvent(274)
EVENT_PLAYER_UNIT_SPELL_FINISH = cj.ConvertPlayerUnitEvent(275)
EVENT_PLAYER_UNIT_SPELL_ENDCAST = cj.ConvertPlayerUnitEvent(276)
EVENT_PLAYER_UNIT_PAWN_ITEM = cj.ConvertPlayerUnitEvent(277)
EVENT_UNIT_SELL = cj.ConvertUnitEvent(286)
EVENT_UNIT_CHANGE_OWNER = cj.ConvertUnitEvent(287)
EVENT_UNIT_SELL_ITEM = cj.ConvertUnitEvent(288)
EVENT_UNIT_SPELL_CHANNEL = cj.ConvertUnitEvent(289)
EVENT_UNIT_SPELL_CAST = cj.ConvertUnitEvent(290)
EVENT_UNIT_SPELL_EFFECT = cj.ConvertUnitEvent(291)
EVENT_UNIT_SPELL_FINISH = cj.ConvertUnitEvent(292)
EVENT_UNIT_SPELL_ENDCAST = cj.ConvertUnitEvent(293)
EVENT_UNIT_PAWN_ITEM = cj.ConvertUnitEvent(294)
LESS_THAN = cj.ConvertLimitOp(0)
LESS_THAN_OR_EQUAL = cj.ConvertLimitOp(1)
EQUAL = cj.ConvertLimitOp(2)
GREATER_THAN_OR_EQUAL = cj.ConvertLimitOp(3)
GREATER_THAN = cj.ConvertLimitOp(4)
NOT_EQUAL = cj.ConvertLimitOp(5)
UNIT_TYPE_HERO = cj.ConvertUnitType(0)
UNIT_TYPE_DEAD = cj.ConvertUnitType(1)
UNIT_TYPE_STRUCTURE = cj.ConvertUnitType(2)
UNIT_TYPE_FLYING = cj.ConvertUnitType(3)
UNIT_TYPE_GROUND = cj.ConvertUnitType(4)
UNIT_TYPE_ATTACKS_FLYING = cj.ConvertUnitType(5)
UNIT_TYPE_ATTACKS_GROUND = cj.ConvertUnitType(6)
UNIT_TYPE_MELEE_ATTACKER = cj.ConvertUnitType(7)
UNIT_TYPE_RANGED_ATTACKER = cj.ConvertUnitType(8)
UNIT_TYPE_GIANT = cj.ConvertUnitType(9)
UNIT_TYPE_SUMMONED = cj.ConvertUnitType(10)
UNIT_TYPE_STUNNED = cj.ConvertUnitType(11)
UNIT_TYPE_PLAGUED = cj.ConvertUnitType(12)
UNIT_TYPE_SNARED = cj.ConvertUnitType(13)
UNIT_TYPE_UNDEAD = cj.ConvertUnitType(14)
UNIT_TYPE_MECHANICAL = cj.ConvertUnitType(15)
UNIT_TYPE_PEON = cj.ConvertUnitType(16)
UNIT_TYPE_SAPPER = cj.ConvertUnitType(17)
UNIT_TYPE_TOWNHALL = cj.ConvertUnitType(18)
UNIT_TYPE_ANCIENT = cj.ConvertUnitType(19)
UNIT_TYPE_TAUREN = cj.ConvertUnitType(20)
UNIT_TYPE_POISONED = cj.ConvertUnitType(21)
UNIT_TYPE_POLYMORPHED = cj.ConvertUnitType(22)
UNIT_TYPE_SLEEPING = cj.ConvertUnitType(23)
UNIT_TYPE_RESISTANT = cj.ConvertUnitType(24)
UNIT_TYPE_ETHEREAL = cj.ConvertUnitType(25)
UNIT_TYPE_MAGIC_IMMUNE = cj.ConvertUnitType(26)
ITEM_TYPE_PERMANENT = cj.ConvertItemType(0)
ITEM_TYPE_CHARGED = cj.ConvertItemType(1)
ITEM_TYPE_POWERUP = cj.ConvertItemType(2)
ITEM_TYPE_ARTIFACT = cj.ConvertItemType(3)
ITEM_TYPE_PURCHASABLE = cj.ConvertItemType(4)
ITEM_TYPE_CAMPAIGN = cj.ConvertItemType(5)
ITEM_TYPE_MISCELLANEOUS = cj.ConvertItemType(6)
ITEM_TYPE_UNKNOWN = cj.ConvertItemType(7)
ITEM_TYPE_ANY = cj.ConvertItemType(8)
ITEM_TYPE_TOME = cj.ConvertItemType(2)
CAMERA_FIELD_TARGET_DISTANCE = cj.ConvertCameraField(0)
CAMERA_FIELD_FARZ = cj.ConvertCameraField(1)
CAMERA_FIELD_ANGLE_OF_ATTACK = cj.ConvertCameraField(2)
CAMERA_FIELD_FIELD_OF_VIEW = cj.ConvertCameraField(3)
CAMERA_FIELD_ROLL = cj.ConvertCameraField(4)
CAMERA_FIELD_ROTATION = cj.ConvertCameraField(5)
CAMERA_FIELD_ZOFFSET = cj.ConvertCameraField(6)
BLEND_MODE_NONE = cj.ConvertBlendMode(0)
BLEND_MODE_DONT_CARE = cj.ConvertBlendMode(0)
BLEND_MODE_KEYALPHA = cj.ConvertBlendMode(1)
BLEND_MODE_BLEND = cj.ConvertBlendMode(2)
BLEND_MODE_ADDITIVE = cj.ConvertBlendMode(3)
BLEND_MODE_MODULATE = cj.ConvertBlendMode(4)
BLEND_MODE_MODULATE_2X = cj.ConvertBlendMode(5)
RARITY_FREQUENT = cj.ConvertRarityControl(0)
RARITY_RARE = cj.ConvertRarityControl(1)
TEXMAP_FLAG_NONE = cj.ConvertTexMapFlags(0)
TEXMAP_FLAG_WRAP_U = cj.ConvertTexMapFlags(1)
TEXMAP_FLAG_WRAP_V = cj.ConvertTexMapFlags(2)
TEXMAP_FLAG_WRAP_UV = cj.ConvertTexMapFlags(3)
FOG_OF_WAR_MASKED = cj.ConvertFogState(1)
FOG_OF_WAR_FOGGED = cj.ConvertFogState(2)
FOG_OF_WAR_VISIBLE = cj.ConvertFogState(4)
CAMERA_MARGIN_LEFT = 0
CAMERA_MARGIN_RIGHT = 1
CAMERA_MARGIN_TOP = 2
CAMERA_MARGIN_BOTTOM = 3
EFFECT_TYPE_EFFECT = cj.ConvertEffectType(0)
EFFECT_TYPE_TARGET = cj.ConvertEffectType(1)
EFFECT_TYPE_CASTER = cj.ConvertEffectType(2)
EFFECT_TYPE_SPECIAL = cj.ConvertEffectType(3)
EFFECT_TYPE_AREA_EFFECT = cj.ConvertEffectType(4)
EFFECT_TYPE_MISSILE = cj.ConvertEffectType(5)
EFFECT_TYPE_LIGHTNING = cj.ConvertEffectType(6)
SOUND_TYPE_EFFECT = cj.ConvertSoundType(0)
SOUND_TYPE_EFFECT_LOOPED = cj.ConvertSoundType(1)
bj_PI = 3.14159265358979323846
bj_E = 2.71828182845904523536
bj_CELLWIDTH = 128.0
bj_CLIFFHEIGHT = 128.0
bj_UNIT_FACING = 270.0
bj_RADTODEG = 180.0 / bj_PI
bj_DEGTORAD = bj_PI / 180.0
bj_TEXT_DELAY_QUEST = 20.00
bj_TEXT_DELAY_QUESTUPDATE = 20.00
bj_TEXT_DELAY_QUESTDONE = 20.00
bj_TEXT_DELAY_QUESTFAILED = 20.00
bj_TEXT_DELAY_QUESTREQUIREMENT = 20.00
bj_TEXT_DELAY_MISSIONFAILED = 20.00
bj_TEXT_DELAY_ALWAYSHINT = 12.00
bj_TEXT_DELAY_HINT = 12.00
bj_TEXT_DELAY_SECRET = 10.00
bj_TEXT_DELAY_UNITACQUIRED = 15.00
bj_TEXT_DELAY_UNITAVAILABLE = 10.00
bj_TEXT_DELAY_ITEMACQUIRED = 10.00
bj_TEXT_DELAY_WARNING = 12.00
bj_QUEUE_DELAY_QUEST = 5.00
bj_QUEUE_DELAY_HINT = 5.00
bj_QUEUE_DELAY_SECRET = 3.00
bj_HANDICAP_EASY = 60.00
bj_GAME_STARTED_THRESHOLD = 0.01
bj_WAIT_FOR_COND_MIN_INTERVAL = 0.10
bj_POLLED_WAIT_INTERVAL = 0.10
bj_POLLED_WAIT_SKIP_THRESHOLD = 2.00
bj_MAX_INVENTORY = 6
bj_MAX_PLAYERS = 12
bj_PLAYER_NEUTRAL_VICTIM = 13
bj_PLAYER_NEUTRAL_EXTRA = 14
bj_MAX_PLAYER_SLOTS = 16
bj_MAX_SKELETONS = 25
bj_MAX_STOCK_ITEM_SLOTS = 11
bj_MAX_STOCK_UNIT_SLOTS = 11
bj_MAX_ITEM_LEVEL = 10
bj_TOD_DAWN = 6.00
bj_TOD_DUSK = 18.00
bj_MELEE_STARTING_TOD = 8.00
bj_MELEE_STARTING_GOLD_V0 = 750
bj_MELEE_STARTING_GOLD_V1 = 500
bj_MELEE_STARTING_LUMBER_V0 = 200
bj_MELEE_STARTING_LUMBER_V1 = 150
bj_MELEE_STARTING_HERO_TOKENS = 1
bj_MELEE_HERO_LIMIT = 3
bj_MELEE_HERO_TYPE_LIMIT = 1
bj_MELEE_MINE_SEARCH_RADIUS = 2000
bj_MELEE_CLEAR_UNITS_RADIUS = 1500
bj_MELEE_CRIPPLE_TIMEOUT = 120.00
bj_MELEE_CRIPPLE_MSG_DURATION = 20.00
bj_MELEE_MAX_TWINKED_HEROES_V0 = 3
bj_MELEE_MAX_TWINKED_HEROES_V1 = 1
bj_CREEP_ITEM_DELAY = 0.50
bj_STOCK_RESTOCK_INITIAL_DELAY = 120
bj_STOCK_RESTOCK_INTERVAL = 30
bj_STOCK_MAX_ITERATIONS = 20
bj_MAX_DEST_IN_REGION_EVENTS = 64
bj_CAMERA_MIN_FARZ = 100
bj_CAMERA_DEFAULT_DISTANCE = 1650
bj_CAMERA_DEFAULT_FARZ = 5000
bj_CAMERA_DEFAULT_AOA = 304
bj_CAMERA_DEFAULT_FOV = 70
bj_CAMERA_DEFAULT_ROLL = 0
bj_CAMERA_DEFAULT_ROTATION = 90
bj_RESCUE_PING_TIME = 2.00
bj_NOTHING_SOUND_DURATION = 5.00
bj_TRANSMISSION_PING_TIME = 1.00
bj_TRANSMISSION_IND_RED = 255
bj_TRANSMISSION_IND_BLUE = 255
bj_TRANSMISSION_IND_GREEN = 255
bj_TRANSMISSION_IND_ALPHA = 255
bj_TRANSMISSION_PORT_HANGTIME = 1.50
bj_CINEMODE_INTERFACEFADE = 0.50
bj_CINEMODE_GAMESPEED = MAP_SPEED_NORMAL
bj_CINEMODE_VOLUME_UNITMOVEMENT = 0.40
bj_CINEMODE_VOLUME_UNITSOUNDS = 0.00
bj_CINEMODE_VOLUME_COMBAT = 0.40
bj_CINEMODE_VOLUME_SPELLS = 0.40
bj_CINEMODE_VOLUME_UI = 0.00
bj_CINEMODE_VOLUME_MUSIC = 0.55
bj_CINEMODE_VOLUME_AMBIENTSOUNDS = 1.00
bj_CINEMODE_VOLUME_FIRE = 0.60
bj_SPEECH_VOLUME_UNITMOVEMENT = 0.25
bj_SPEECH_VOLUME_UNITSOUNDS = 0.00
bj_SPEECH_VOLUME_COMBAT = 0.25
bj_SPEECH_VOLUME_SPELLS = 0.25
bj_SPEECH_VOLUME_UI = 0.00
bj_SPEECH_VOLUME_MUSIC = 0.55
bj_SPEECH_VOLUME_AMBIENTSOUNDS = 1.00
bj_SPEECH_VOLUME_FIRE = 0.60
bj_SMARTPAN_TRESHOLD_PAN = 500
bj_SMARTPAN_TRESHOLD_SNAP = 3500
bj_MAX_QUEUED_TRIGGERS = 100
bj_QUEUED_TRIGGER_TIMEOUT = 180.00
bj_CAMPAIGN_INDEX_T = 0
bj_CAMPAIGN_INDEX_H = 1
bj_CAMPAIGN_INDEX_U = 2
bj_CAMPAIGN_INDEX_O = 3
bj_CAMPAIGN_INDEX_N = 4
bj_CAMPAIGN_INDEX_XN = 5
bj_CAMPAIGN_INDEX_XH = 6
bj_CAMPAIGN_INDEX_XU = 7
bj_CAMPAIGN_INDEX_XO = 8
bj_CAMPAIGN_OFFSET_T = 0
bj_CAMPAIGN_OFFSET_H = 1
bj_CAMPAIGN_OFFSET_U = 2
bj_CAMPAIGN_OFFSET_O = 3
bj_CAMPAIGN_OFFSET_N = 4
bj_CAMPAIGN_OFFSET_XN = 0
bj_CAMPAIGN_OFFSET_XH = 1
bj_CAMPAIGN_OFFSET_XU = 2
bj_CAMPAIGN_OFFSET_XO = 3
bj_MISSION_INDEX_T00 = bj_CAMPAIGN_OFFSET_T * 1000 + 0
bj_MISSION_INDEX_T01 = bj_CAMPAIGN_OFFSET_T * 1000 + 1
bj_MISSION_INDEX_H00 = bj_CAMPAIGN_OFFSET_H * 1000 + 0
bj_MISSION_INDEX_H01 = bj_CAMPAIGN_OFFSET_H * 1000 + 1
bj_MISSION_INDEX_H02 = bj_CAMPAIGN_OFFSET_H * 1000 + 2
bj_MISSION_INDEX_H03 = bj_CAMPAIGN_OFFSET_H * 1000 + 3
bj_MISSION_INDEX_H04 = bj_CAMPAIGN_OFFSET_H * 1000 + 4
bj_MISSION_INDEX_H05 = bj_CAMPAIGN_OFFSET_H * 1000 + 5
bj_MISSION_INDEX_H06 = bj_CAMPAIGN_OFFSET_H * 1000 + 6
bj_MISSION_INDEX_H07 = bj_CAMPAIGN_OFFSET_H * 1000 + 7
bj_MISSION_INDEX_H08 = bj_CAMPAIGN_OFFSET_H * 1000 + 8
bj_MISSION_INDEX_H09 = bj_CAMPAIGN_OFFSET_H * 1000 + 9
bj_MISSION_INDEX_H10 = bj_CAMPAIGN_OFFSET_H * 1000 + 10
bj_MISSION_INDEX_H11 = bj_CAMPAIGN_OFFSET_H * 1000 + 11
bj_MISSION_INDEX_U00 = bj_CAMPAIGN_OFFSET_U * 1000 + 0
bj_MISSION_INDEX_U01 = bj_CAMPAIGN_OFFSET_U * 1000 + 1
bj_MISSION_INDEX_U02 = bj_CAMPAIGN_OFFSET_U * 1000 + 2
bj_MISSION_INDEX_U03 = bj_CAMPAIGN_OFFSET_U * 1000 + 3
bj_MISSION_INDEX_U05 = bj_CAMPAIGN_OFFSET_U * 1000 + 4
bj_MISSION_INDEX_U07 = bj_CAMPAIGN_OFFSET_U * 1000 + 5
bj_MISSION_INDEX_U08 = bj_CAMPAIGN_OFFSET_U * 1000 + 6
bj_MISSION_INDEX_U09 = bj_CAMPAIGN_OFFSET_U * 1000 + 7
bj_MISSION_INDEX_U10 = bj_CAMPAIGN_OFFSET_U * 1000 + 8
bj_MISSION_INDEX_U11 = bj_CAMPAIGN_OFFSET_U * 1000 + 9
bj_MISSION_INDEX_O00 = bj_CAMPAIGN_OFFSET_O * 1000 + 0
bj_MISSION_INDEX_O01 = bj_CAMPAIGN_OFFSET_O * 1000 + 1
bj_MISSION_INDEX_O02 = bj_CAMPAIGN_OFFSET_O * 1000 + 2
bj_MISSION_INDEX_O03 = bj_CAMPAIGN_OFFSET_O * 1000 + 3
bj_MISSION_INDEX_O04 = bj_CAMPAIGN_OFFSET_O * 1000 + 4
bj_MISSION_INDEX_O05 = bj_CAMPAIGN_OFFSET_O * 1000 + 5
bj_MISSION_INDEX_O06 = bj_CAMPAIGN_OFFSET_O * 1000 + 6
bj_MISSION_INDEX_O07 = bj_CAMPAIGN_OFFSET_O * 1000 + 7
bj_MISSION_INDEX_O08 = bj_CAMPAIGN_OFFSET_O * 1000 + 8
bj_MISSION_INDEX_O09 = bj_CAMPAIGN_OFFSET_O * 1000 + 9
bj_MISSION_INDEX_O10 = bj_CAMPAIGN_OFFSET_O * 1000 + 10
bj_MISSION_INDEX_N00 = bj_CAMPAIGN_OFFSET_N * 1000 + 0
bj_MISSION_INDEX_N01 = bj_CAMPAIGN_OFFSET_N * 1000 + 1
bj_MISSION_INDEX_N02 = bj_CAMPAIGN_OFFSET_N * 1000 + 2
bj_MISSION_INDEX_N03 = bj_CAMPAIGN_OFFSET_N * 1000 + 3
bj_MISSION_INDEX_N04 = bj_CAMPAIGN_OFFSET_N * 1000 + 4
bj_MISSION_INDEX_N05 = bj_CAMPAIGN_OFFSET_N * 1000 + 5
bj_MISSION_INDEX_N06 = bj_CAMPAIGN_OFFSET_N * 1000 + 6
bj_MISSION_INDEX_N07 = bj_CAMPAIGN_OFFSET_N * 1000 + 7
bj_MISSION_INDEX_N08 = bj_CAMPAIGN_OFFSET_N * 1000 + 8
bj_MISSION_INDEX_N09 = bj_CAMPAIGN_OFFSET_N * 1000 + 9
bj_MISSION_INDEX_XN00 = bj_CAMPAIGN_OFFSET_XN * 1000 + 0
bj_MISSION_INDEX_XN01 = bj_CAMPAIGN_OFFSET_XN * 1000 + 1
bj_MISSION_INDEX_XN02 = bj_CAMPAIGN_OFFSET_XN * 1000 + 2
bj_MISSION_INDEX_XN03 = bj_CAMPAIGN_OFFSET_XN * 1000 + 3
bj_MISSION_INDEX_XN04 = bj_CAMPAIGN_OFFSET_XN * 1000 + 4
bj_MISSION_INDEX_XN05 = bj_CAMPAIGN_OFFSET_XN * 1000 + 5
bj_MISSION_INDEX_XN06 = bj_CAMPAIGN_OFFSET_XN * 1000 + 6
bj_MISSION_INDEX_XN07 = bj_CAMPAIGN_OFFSET_XN * 1000 + 7
bj_MISSION_INDEX_XN08 = bj_CAMPAIGN_OFFSET_XN * 1000 + 8
bj_MISSION_INDEX_XN09 = bj_CAMPAIGN_OFFSET_XN * 1000 + 9
bj_MISSION_INDEX_XN10 = bj_CAMPAIGN_OFFSET_XN * 1000 + 10
bj_MISSION_INDEX_XH00 = bj_CAMPAIGN_OFFSET_XH * 1000 + 0
bj_MISSION_INDEX_XH01 = bj_CAMPAIGN_OFFSET_XH * 1000 + 1
bj_MISSION_INDEX_XH02 = bj_CAMPAIGN_OFFSET_XH * 1000 + 2
bj_MISSION_INDEX_XH03 = bj_CAMPAIGN_OFFSET_XH * 1000 + 3
bj_MISSION_INDEX_XH04 = bj_CAMPAIGN_OFFSET_XH * 1000 + 4
bj_MISSION_INDEX_XH05 = bj_CAMPAIGN_OFFSET_XH * 1000 + 5
bj_MISSION_INDEX_XH06 = bj_CAMPAIGN_OFFSET_XH * 1000 + 6
bj_MISSION_INDEX_XH07 = bj_CAMPAIGN_OFFSET_XH * 1000 + 7
bj_MISSION_INDEX_XH08 = bj_CAMPAIGN_OFFSET_XH * 1000 + 8
bj_MISSION_INDEX_XH09 = bj_CAMPAIGN_OFFSET_XH * 1000 + 9
bj_MISSION_INDEX_XU00 = bj_CAMPAIGN_OFFSET_XU * 1000 + 0
bj_MISSION_INDEX_XU01 = bj_CAMPAIGN_OFFSET_XU * 1000 + 1
bj_MISSION_INDEX_XU02 = bj_CAMPAIGN_OFFSET_XU * 1000 + 2
bj_MISSION_INDEX_XU03 = bj_CAMPAIGN_OFFSET_XU * 1000 + 3
bj_MISSION_INDEX_XU04 = bj_CAMPAIGN_OFFSET_XU * 1000 + 4
bj_MISSION_INDEX_XU05 = bj_CAMPAIGN_OFFSET_XU * 1000 + 5
bj_MISSION_INDEX_XU06 = bj_CAMPAIGN_OFFSET_XU * 1000 + 6
bj_MISSION_INDEX_XU07 = bj_CAMPAIGN_OFFSET_XU * 1000 + 7
bj_MISSION_INDEX_XU08 = bj_CAMPAIGN_OFFSET_XU * 1000 + 8
bj_MISSION_INDEX_XU09 = bj_CAMPAIGN_OFFSET_XU * 1000 + 9
bj_MISSION_INDEX_XU10 = bj_CAMPAIGN_OFFSET_XU * 1000 + 10
bj_MISSION_INDEX_XU11 = bj_CAMPAIGN_OFFSET_XU * 1000 + 11
bj_MISSION_INDEX_XU12 = bj_CAMPAIGN_OFFSET_XU * 1000 + 12
bj_MISSION_INDEX_XU13 = bj_CAMPAIGN_OFFSET_XU * 1000 + 13
bj_MISSION_INDEX_XO00 = bj_CAMPAIGN_OFFSET_XO * 1000 + 0
bj_CINEMATICINDEX_TOP = 0
bj_CINEMATICINDEX_HOP = 1
bj_CINEMATICINDEX_HED = 2
bj_CINEMATICINDEX_OOP = 3
bj_CINEMATICINDEX_OED = 4
bj_CINEMATICINDEX_UOP = 5
bj_CINEMATICINDEX_UED = 6
bj_CINEMATICINDEX_NOP = 7
bj_CINEMATICINDEX_NED = 8
bj_CINEMATICINDEX_XOP = 9
bj_CINEMATICINDEX_XED = 10
bj_ALLIANCE_UNALLIED = 0
bj_ALLIANCE_UNALLIED_VISION = 1
bj_ALLIANCE_ALLIED = 2
bj_ALLIANCE_ALLIED_VISION = 3
bj_ALLIANCE_ALLIED_UNITS = 4
bj_ALLIANCE_ALLIED_ADVUNITS = 5
bj_ALLIANCE_NEUTRAL = 6
bj_ALLIANCE_NEUTRAL_VISION = 7
bj_KEYEVENTTYPE_DEPRESS = 0
bj_KEYEVENTTYPE_RELEASE = 1
bj_KEYEVENTKEY_LEFT = 0
bj_KEYEVENTKEY_RIGHT = 1
bj_KEYEVENTKEY_DOWN = 2
bj_KEYEVENTKEY_UP = 3
bj_TIMETYPE_ADD = 0
bj_TIMETYPE_SET = 1
bj_TIMETYPE_SUB = 2
bj_CAMERABOUNDS_ADJUST_ADD = 0
bj_CAMERABOUNDS_ADJUST_SUB = 1
bj_QUESTTYPE_REQ_DISCOVERED = 0
bj_QUESTTYPE_REQ_UNDISCOVERED = 1
bj_QUESTTYPE_OPT_DISCOVERED = 2
bj_QUESTTYPE_OPT_UNDISCOVERED = 3
bj_QUESTMESSAGE_DISCOVERED = 0
bj_QUESTMESSAGE_UPDATED = 1
bj_QUESTMESSAGE_COMPLETED = 2
bj_QUESTMESSAGE_FAILED = 3
bj_QUESTMESSAGE_REQUIREMENT = 4
bj_QUESTMESSAGE_MISSIONFAILED = 5
bj_QUESTMESSAGE_ALWAYSHINT = 6
bj_QUESTMESSAGE_HINT = 7
bj_QUESTMESSAGE_SECRET = 8
bj_QUESTMESSAGE_UNITACQUIRED = 9
bj_QUESTMESSAGE_UNITAVAILABLE = 10
bj_QUESTMESSAGE_ITEMACQUIRED = 11
bj_QUESTMESSAGE_WARNING = 12
bj_SORTTYPE_SORTBYVALUE = 0
bj_SORTTYPE_SORTBYPLAYER = 1
bj_SORTTYPE_SORTBYLABEL = 2
bj_CINEFADETYPE_FADEIN = 0
bj_CINEFADETYPE_FADEOUT = 1
bj_CINEFADETYPE_FADEOUTIN = 2
bj_REMOVEBUFFS_POSITIVE = 0
bj_REMOVEBUFFS_NEGATIVE = 1
bj_REMOVEBUFFS_ALL = 2
bj_REMOVEBUFFS_NONTLIFE = 3
bj_BUFF_POLARITY_POSITIVE = 0
bj_BUFF_POLARITY_NEGATIVE = 1
bj_BUFF_POLARITY_EITHER = 2
bj_BUFF_RESIST_MAGIC = 0
bj_BUFF_RESIST_PHYSICAL = 1
bj_BUFF_RESIST_EITHER = 2
bj_BUFF_RESIST_BOTH = 3
bj_HEROSTAT_STR = 0
bj_HEROSTAT_AGI = 1
bj_HEROSTAT_INT = 2
bj_MODIFYMETHOD_ADD = 0
bj_MODIFYMETHOD_SUB = 1
bj_MODIFYMETHOD_SET = 2
bj_UNIT_STATE_METHOD_ABSOLUTE = 0
bj_UNIT_STATE_METHOD_RELATIVE = 1
bj_UNIT_STATE_METHOD_DEFAULTS = 2
bj_UNIT_STATE_METHOD_MAXIMUM = 3
bj_GATEOPERATION_CLOSE = 0
bj_GATEOPERATION_OPEN = 1
bj_GATEOPERATION_DESTROY = 2
bj_GAMECACHE_BOOLEAN = 0
bj_GAMECACHE_INTEGER = 1
bj_GAMECACHE_REAL = 2
bj_GAMECACHE_UNIT = 3
bj_GAMECACHE_STRING = 4
bj_ITEM_STATUS_HIDDEN = 0
bj_ITEM_STATUS_OWNED = 1
bj_ITEM_STATUS_INVULNERABLE = 2
bj_ITEM_STATUS_POWERUP = 3
bj_ITEM_STATUS_SELLABLE = 4
bj_ITEM_STATUS_PAWNABLE = 5
bj_ITEMCODE_STATUS_POWERUP = 0
bj_ITEMCODE_STATUS_SELLABLE = 1
bj_ITEMCODE_STATUS_PAWNABLE = 2
bj_MINIMAPPINGSTYLE_SIMPLE = 0
bj_MINIMAPPINGSTYLE_FLASHY = 1
bj_MINIMAPPINGSTYLE_ATTACK = 2
bj_CORPSE_MAX_DEATH_TIME = 8.00
bj_CORPSETYPE_FLESH = 0
bj_CORPSETYPE_BONE = 1
bj_ELEVATOR_BLOCKER_CODE = "DTep"
bj_ELEVATOR_CODE01 = "DTrf"
bj_ELEVATOR_CODE02 = "DTrx"
bj_ELEVATOR_WALL_TYPE_ALL = 0
bj_ELEVATOR_WALL_TYPE_EAST = 1
bj_ELEVATOR_WALL_TYPE_NORTH = 2
bj_ELEVATOR_WALL_TYPE_SOUTH = 3
bj_ELEVATOR_WALL_TYPE_WEST = 4
bj_MELEE_MAX_TWINKED_HEROES = 0
bj_slotControlReady = false
bj_mapInitialPlayableArea = nil
bj_mapInitialCameraBounds = nil
bj_forLoopAIndex = 0
bj_forLoopBIndex = 0
bj_forLoopAIndexEnd = 0
bj_forLoopBIndexEnd = 0
bj_slotControlReady = false
bj_gameStartedTimer = nil
bj_gameStarted = false
bj_isSinglePlayer = false
bj_dncSoundsDay = nil
bj_dncSoundsNight = nil
bj_dayAmbientSound = nil
bj_nightAmbientSound = nil
bj_dncSoundsDawn = nil
bj_dncSoundsDusk = nil
bj_dawnSound = nil
bj_duskSound = nil
bj_useDawnDuskSounds = true
bj_dncIsDaytime = false
bj_rescueSound = nil
bj_questDiscoveredSound = nil
bj_questUpdatedSound = nil
bj_questCompletedSound = nil
bj_questFailedSound = nil
bj_questHintSound = nil
bj_questSecretSound = nil
bj_questItemAcquiredSound = nil
bj_questWarningSound = nil
bj_victoryDialogSound = nil
bj_defeatDialogSound = nil
bj_rescueUnitBehavior = nil
bj_rescueChangeColorUnit = true
bj_rescueChangeColorBldg = true
bj_cineSceneEndingTimer = nil
bj_cineSceneLastSound = nil
bj_cineSceneBeingSkipped = nil
bj_cineModePriorSpeed = MAP_SPEED_NORMAL
bj_cineModePriorFogSetting = false
bj_cineModePriorMaskSetting = false
bj_cineModeAlreadyIn = false
bj_cineModePriorDawnDusk = false
bj_cineModeSavedSeed = 0
bj_cineFadeFinishTimer = nil
bj_cineFadeContinueTimer = nil
bj_cineFadeContinueRed = 0
bj_cineFadeContinueGreen = 0
bj_cineFadeContinueBlue = 0
bj_cineFadeContinueTrans = 0
bj_cineFadeContinueDuration = 0
bj_cineFadeContinueTex = ""
bj = {}
bj.StartSoundForPlayerBJ = function(whichPlayer, soundHandle)
    if whichPlayer == cj.GetLocalPlayer() then
        cj.StartSound(soundHandle)
    end
end
bj.VolumeGroupSetVolumeForPlayerBJ = function(whichPlayer, vgroup, scale)
    if cj.GetLocalPlayer() == whichPlayer then
        cj.VolumeGroupSetVolume(vgroup, scale)
    end
end
bj.TriggerRegisterAnyUnitEventBJ = function(trig, whichEvent)
    for i = 1, bj_MAX_PLAYER_SLOTS, 1 do
        cj.TriggerRegisterPlayerUnitEvent(trig, cj.Player(i - 1), whichEvent, nil)
    end
end
bj.TriggerRegisterPlayerSelectionEventBJ = function(trig, whichPlayer, selected)
    if (selected) then
        return cj.TriggerRegisterPlayerUnitEvent(trig, whichPlayer, EVENT_PLAYER_UNIT_SELECTED, nil)
    else
        return cj.TriggerRegisterPlayerUnitEvent(trig, whichPlayer, EVENT_PLAYER_UNIT_DESELECTED, nil)
    end
end
bj.TriggerRegisterPlayerKeyEventBJ = function(trig, whichPlayer, keType, keKey)
    if keType == bj_KEYEVENTTYPE_DEPRESS then
        
        if keKey == bj_KEYEVENTKEY_LEFT then
            return cj.TriggerRegisterPlayerEvent(trig, whichPlayer, EVENT_PLAYER_ARROW_LEFT_DOWN)
        elseif keKey == bj_KEYEVENTKEY_RIGHT then
            return cj.TriggerRegisterPlayerEvent(trig, whichPlayer, EVENT_PLAYER_ARROW_RIGHT_DOWN)
        elseif keKey == bj_KEYEVENTKEY_DOWN then
            return cj.TriggerRegisterPlayerEvent(trig, whichPlayer, EVENT_PLAYER_ARROW_DOWN_DOWN)
        elseif keKey == bj_KEYEVENTKEY_UP then
            return cj.TriggerRegisterPlayerEvent(trig, whichPlayer, EVENT_PLAYER_ARROW_UP_DOWN)
        else
            
            return nil
        end
    elseif keType == bj_KEYEVENTTYPE_RELEASE then
        
        if keKey == bj_KEYEVENTKEY_LEFT then
            return cj.TriggerRegisterPlayerEvent(trig, whichPlayer, EVENT_PLAYER_ARROW_LEFT_UP)
        elseif keKey == bj_KEYEVENTKEY_RIGHT then
            return cj.TriggerRegisterPlayerEvent(trig, whichPlayer, EVENT_PLAYER_ARROW_RIGHT_UP)
        elseif keKey == bj_KEYEVENTKEY_DOWN then
            return cj.TriggerRegisterPlayerEvent(trig, whichPlayer, EVENT_PLAYER_ARROW_DOWN_UP)
        elseif keKey == bj_KEYEVENTKEY_UP then
            return cj.TriggerRegisterPlayerEvent(trig, whichPlayer, EVENT_PLAYER_ARROW_UP_UP)
        else
            
            return nil
        end
    else
        
        return nil
    end
end
bj.AllowVictoryDefeatBJ = function(gameResult)
    if (gameResult == PLAYER_GAME_RESULT_VICTORY) then
        return not cj.IsNoVictoryCheat()
    end
    if (gameResult == PLAYER_GAME_RESULT_DEFEAT) then
        return not cj.IsNoDefeatCheat()
    end
    if (gameResult == PLAYER_GAME_RESULT_NEUTRAL) then
        return (not cj.IsNoVictoryCheat()) and (not cj.IsNoDefeatCheat())
    end
    return true
end
bj.CustomDefeatDialogBJ = function(whichPlayer, message)
    local t = cj.CreateTrigger()
    local d = cj.DialogCreate()
    cj.DialogSetMessage(d, message)
    cj.TriggerRegisterDialogButtonEvent(
        t,
        cj.DialogAddButton(
            d,
            cj.GetLocalizedString("GAMEOVER_QUIT_MISSION"),
            cj.GetLocalizedHotkey("GAMEOVER_QUIT_MISSION")
        )
    )
    cj.TriggerAddAction(
        t,
        function()
            cj.PauseGame(false)
            cj.RestartGame(true)
        end
    )
    if (cj.GetLocalPlayer() == whichPlayer) then
        cj.EnableUserControl(true)
        if cg.bj_isSinglePlayer then
            cj.PauseGame(true)
        end
        cj.EnableUserUI(false)
    end
    cj.DialogDisplay(whichPlayer, d, true)
    bj.VolumeGroupSetVolumeForPlayerBJ(whichPlayer, SOUND_VOLUMEGROUP_UI, 1.0)
    bj.StartSoundForPlayerBJ(whichPlayer, cg.bj_defeatDialogSound)
end
bj.CustomDefeatQuitBJ = function()
    if cg.bj_isSinglePlayer then
        cj.PauseGame(false)
    end
    
    cj.SetGameDifficulty(cj.GetDefaultDifficulty())
    cj.EndGame(true)
end
bj.CustomVictoryDialogBJ = function(whichPlayer)
    local t
    local d = cj.DialogCreate()
    cj.DialogSetMessage(d, cj.GetLocalizedString("GAMEOVER_VICTORY_MSG"))
    t = cj.CreateTrigger()
    cj.TriggerRegisterDialogButtonEvent(
        t,
        cj.DialogAddButton(d, cj.GetLocalizedString("GAMEOVER_CONTINUE"), cj.GetLocalizedHotkey("GAMEOVER_CONTINUE"))
    )
    cj.TriggerAddAction(
        t,
        function()
            if cg.bj_isSinglePlayer then
                cj.PauseGame(false)
                
                cj.SetGameDifficulty(cj.GetDefaultDifficulty())
            end
            if cg.bj_changeLevelMapName == nil then
                cj.EndGame(cg.bj_changeLevelShowScores)
            else
                cj.ChangeLevel(cg.bj_changeLevelMapName, cg.bj_changeLevelShowScores)
            end
        end
    )
    t = cj.CreateTrigger()
    cj.TriggerRegisterDialogButtonEvent(
        t,
        cj.DialogAddButton(
            d,
            cj.GetLocalizedString("GAMEOVER_QUIT_MISSION"),
            cj.GetLocalizedHotkey("GAMEOVER_QUIT_MISSION")
        )
    )
    cj.TriggerAddAction(t, bj.CustomDefeatQuitBJ)
    if cj.GetLocalPlayer() == whichPlayer then
        cj.EnableUserControl(true)
        if cg.bj_isSinglePlayer then
            cj.PauseGame(true)
        end
        cj.EnableUserUI(false)
    end
    cj.DialogDisplay(whichPlayer, d, true)
    bj.VolumeGroupSetVolumeForPlayerBJ(whichPlayer, SOUND_VOLUMEGROUP_UI, 1.0)
    bj.StartSoundForPlayerBJ(whichPlayer, cg.bj_victoryDialogSound)
end
bj.CustomDefeatBJ = function(whichPlayer, message)
    if bj.AllowVictoryDefeatBJ(PLAYER_GAME_RESULT_DEFEAT) then
        cj.RemovePlayer(whichPlayer, PLAYER_GAME_RESULT_DEFEAT)
        if not cg.bj_isSinglePlayer then
            cj.DisplayTimedTextFromPlayer(whichPlayer, 0, 0, 60, cj.GetLocalizedString("PLAYER_DEFEATED"))
        end
        
        if (cj.GetPlayerController(whichPlayer) == MAP_CONTROL_USER) then
            bj.CustomDefeatDialogBJ(whichPlayer, message)
        end
    end
end
bj.CustomVictorySkipBJ = function(whichPlayer)
    if cj.GetLocalPlayer() == whichPlayer then
        if cg.bj_isSinglePlayer then
            
            cj.SetGameDifficulty(cj.GetDefaultDifficulty())
        end
        if cg.bj_changeLevelMapName == nil then
            cj.EndGame(cg.bj_changeLevelShowScores)
        else
            cj.ChangeLevel(cg.bj_changeLevelMapName, cg.bj_changeLevelShowScores)
        end
    end
end
bj.CustomVictoryBJ = function(whichPlayer, showDialog, showScores)
    if bj.AllowVictoryDefeatBJ(PLAYER_GAME_RESULT_VICTORY) then
        cj.RemovePlayer(whichPlayer, PLAYER_GAME_RESULT_VICTORY)
        if not cg.bj_isSinglePlayer then
            cj.DisplayTimedTextFromPlayer(whichPlayer, 0, 0, 60, cj.GetLocalizedString("PLAYER_VICTORIOUS"))
        end
        
        if (cj.GetPlayerController(whichPlayer) == MAP_CONTROL_USER) then
            cg.bj_changeLevelShowScores = showScores
            if showDialog then
                bj.CustomVictoryDialogBJ(whichPlayer)
            else
                bj.CustomVictorySkipBJ(whichPlayer)
            end
        end
    end
end
bj.AbortCinematicFadeBJ = function()
    if cg.bj_cineFadeContinueTimer ~= nil then
        cj.DestroyTimer(cg.bj_cineFadeContinueTimer)
    end
    if cg.bj_cineFadeFinishTimer ~= nil then
        cj.DestroyTimer(cg.bj_cineFadeFinishTimer)
    end
end
bj.PercentToInt = function(percentage, max)
    local result = cj.R2I(percentage * cj.I2R(max) * 0.01)
    if result < 0 then
        result = 0
    elseif result > max then
        result = max
    end
    return result
end
bj.PercentTo255 = function(percentage)
    return bj.PercentToInt(percentage, 255)
end
bj.CinematicFilterGenericBJ = function(duration, bmode, tex, red0, green0, blue0, trans0, red1, green1, blue1, trans1)
    bj.AbortCinematicFadeBJ()
    cj.SetCineFilterTexture(tex)
    cj.SetCineFilterBlendMode(bmode)
    cj.SetCineFilterTexMapFlags(TEXMAP_FLAG_NONE)
    cj.SetCineFilterStartUV(0, 0, 1, 1)
    cj.SetCineFilterEndUV(0, 0, 1, 1)
    cj.SetCineFilterStartColor(
        bj.PercentTo255(red0),
        bj.PercentTo255(green0),
        bj.PercentTo255(blue0),
        bj.PercentTo255(100 - trans0)
    )
    cj.SetCineFilterEndColor(
        bj.PercentTo255(red1),
        bj.PercentTo255(green1),
        bj.PercentTo255(blue1),
        bj.PercentTo255(100 - trans1)
    )
    cj.SetCineFilterDuration(duration)
    cj.DisplayCineFilter(true)
end
bj.SetUnitVertexColorBJ = function(whichUnit, red, green, blue, transparency)
    cj.SetUnitVertexColor(
        whichUnit,
        bj.PercentTo255(red),
        bj.PercentTo255(green),
        bj.PercentTo255(blue),
        bj.PercentTo255(100.0 - transparency)
    )
end
bj.CreateQuestBJ = function(questType, title, description, iconPath)
    local required = questType == bj_QUESTTYPE_REQ_DISCOVERED or questType == bj_QUESTTYPE_REQ_UNDISCOVERED
    local discovered = questType == bj_QUESTTYPE_REQ_DISCOVERED or questType == bj_QUESTTYPE_OPT_DISCOVERED
    local cq = cj.CreateQuest()
    cj.QuestSetTitle(cq, title)
    cj.QuestSetDescription(cq, description)
    cj.QuestSetIconPath(cq, iconPath)
    cj.QuestSetRequired(cq, required)
    cj.QuestSetDiscovered(cq, discovered)
    cj.QuestSetCompleted(cq, false)
    return cq
end
bj.TriggerRegisterEnterRectSimple = function(trig, r)
    local rectRegion = cj.CreateRegion()
    cj.RegionAddRect(rectRegion, r)
    return cj.TriggerRegisterEnterRegion(trig, rectRegion, nil)
end
bj.TriggerRegisterLeaveRectSimple = function(trig, r)
    local rectRegion = cj.CreateRegion()
    cj.RegionAddRect(rectRegion, r)
    return cj.TriggerRegisterLeaveRegion(trig, rectRegion, nil)
end
bj.GetCameraBoundsMapRect = function()
    return bj_mapInitialCameraBounds
end
bj.GetPlayableMapRect = function()
    return bj_mapInitialPlayableArea
end
bj.GetCurrentCameraBoundsMapRectBJ = function()
    return cj.Rect(cj.GetCameraBoundMinX(), cj.GetCameraBoundMinY(), cj.GetCameraBoundMaxX(), cj.GetCameraBoundMaxY())
end
bj_mapInitialPlayableArea =
    cj.Rect(
    cj.GetCameraBoundMinX() - cj.GetCameraMargin(CAMERA_MARGIN_LEFT),
    cj.GetCameraBoundMinY() - cj.GetCameraMargin(CAMERA_MARGIN_BOTTOM),
    cj.GetCameraBoundMaxX() + cj.GetCameraMargin(CAMERA_MARGIN_RIGHT),
    cj.GetCameraBoundMaxY() + cj.GetCameraMargin(CAMERA_MARGIN_TOP)
)
bj_mapInitialCameraBounds = bj.GetCurrentCameraBoundsMapRectBJ()
bj.TriggerRegisterEnterRectSimple = function(trig, r)
    local rectRegion = cj.CreateRegion()
    cj.RegionAddRect(rectRegion, r)
    return cj.TriggerRegisterEnterRegion(trig, rectRegion, null)
end
CONST_ATTR = {
    life = "生命",
    mana = "魔法",
    move = "移动",
    defend = "护甲",
    attack_damage_type = "攻击伤害类型",
    physical = "物理",
    magic = "魔法",
    real = "真实",
    absolute = "绝对",
    fire = "火",
    soil = "土",
    water = "水",
    ice = "冰",
    wind = "风",
    light = "光",
    dark = "暗",
    wood = "木",
    thunder = "雷",
    poison = "毒",
    ghost = "鬼",
    metal = "金",
    dragon = "龙",
    insect = "虫",
    god = "神",
    attack_speed = "攻速",
    attack_speed_space = "攻击间隔",
    attack_white = "攻击力",
    attack_green = "附加攻击力",
    attack_range = "攻击范围",
    sight = "视野范围",
    str_green = "附加力量",
    agi_green = "附加敏捷",
    int_green = "附加智力",
    str_white = "本体力量",
    agi_white = "本体敏捷",
    int_white = "本体智力",
    life_back = "生命恢复",
    mana_back = "魔法恢复",
    resistance = "魔抗",
    toughness = "减伤",
    avoid = "回避",
    aim = "命中",
    punish = "僵直",
    punish_current = "当前僵直",
    meditative = "冥想力",
    help = "救助力",
    hemophagia = "吸血",
    hemophagia_skill = "技能吸血",
    luck = "幸运",
    invincible = "无敌",
    weight = "负重",
    weight_current = "当前负重",
    damage_extent = "伤害增幅",
    damage_rebound = "反弹伤害",
    damage_rebound_oppose = "反伤抵抗",
    cure = "治疗",
    knocking_oppose = "物理暴击抵抗",
    violence_oppose = "魔法暴击抵抗",
    hemophagia_oppose = "吸血抵抗",
    hemophagia_skill_oppose = "技能吸血抵抗",
    split_oppose = "分裂抵抗",
    punish_oppose = "僵直抵抗",
    swim_oppose = "眩晕抵抗",
    broken_oppose = "打断抵抗",
    silent_oppose = "沉默抵抗",
    unarm_oppose = "缴械抵抗",
    fetter_oppose = "缚足抵抗",
    bomb_oppose = "爆破抵抗",
    lightning_chain_oppose = "闪电链抵抗",
    crack_fly_oppose = "击飞抵抗",
    natural_fire = "自然火攻",
    natural_soil = "自然土攻",
    natural_water = "自然水攻",
    natural_ice = "自然冰攻",
    natural_wind = "自然风攻",
    natural_light = "自然光攻",
    natural_dark = "自然暗攻",
    natural_wood = "自然木攻",
    natural_thunder = "自然雷攻",
    natural_poison = "自然毒攻",
    natural_ghost = "自然鬼攻",
    natural_metal = "自然金攻",
    natural_dragon = "自然龙攻",
    natural_insect = "自然虫攻",
    natural_god = "自然神攻",
    natural_fire_oppose = "自然火抗",
    natural_soil_oppose = "自然土抗",
    natural_water_oppose = "自然水抗",
    natural_ice_oppose = "自然冰抗",
    natural_wind_oppose = "自然风抗",
    natural_light_oppose = "自然光抗",
    natural_dark_oppose = "自然暗抗",
    natural_wood_oppose = "自然风抗",
    natural_thunder_oppose = "自然雷抗",
    natural_poison_oppose = "自然毒抗",
    natural_ghost_oppose = "自然鬼抗",
    natural_metal_oppose = "自然金抗",
    natural_dragon_oppose = "自然龙抗",
    natural_insect_oppose = "自然虫抗",
    natural_god_oppose = "自然神抗",
    --
    attack_buff = "攻击增益",
    attack_debuff = "负面攻击",
    skill_buff = "技能增益",
    skill_debuff = "负面技能",
    attack_effect = "攻击特效",
    skill_effect = "技能特效",
    --
    knocking = "物理暴击",
    violence = "魔法暴击",
    split = "分裂",
    swim = "眩晕",
    broken = "打断",
    silent = "沉默",
    unarm = "缴械",
    fetter = "缚足",
    bomb = "爆破",
    lightning_chain = "闪电链",
    crack_fly = "击飞",
    --
    odds = "几率",
    percent = "比例",
    val = "数值",
    during = "持续时间",
    qty = "数量",
    range = "范围",
    reduce = "衰减",
    distance = "距离",
    high = "高度",
    --本身是在player实现
    gold_ratio = "黄金获得率",
    lumber_ratio = "木头获得率",
    exp_ratio = "经验获得率",
    sell_ratio = "售卖比率"
}
CONST_DAMAGE_KIND = {
    attack = "attack",
    skill = "skill",
    special = "special",
    item = "item",
}
CONST_DAMAGE_KIND_LABEL = {
    attack = "攻击",
    skill = "技能",
    special = "特殊",
    item = "物品",
}
CONST_DAMAGE_TYPE = {
    common = "common",
    physical = "physical",
    magic = "magic",
    real = "real",
    absolute = "absolute",
    fire = "fire",
    soil = "soil",
    water = "water",
    ice = "ice",
    wind = "wind",
    light = "light",
    dark = "dark",
    wood = "wood",
    thunder = "thunder",
    poison = "poison",
    ghost = "ghost",
    metal = "metal",
    dragon = "dragon",
    insect = "insect",
    god = "god"
}
CONST_DAMAGE_TYPE_NATURE = {
    "fire",
    "soil",
    "water",
    "ice",
    "wind",
    "light",
    "dark",
    "wood",
    "thunder",
    "poison",
    "ghost",
    "metal",
    "dragon",
    "insect",
    "god",
}
CONST_DAMAGE_TYPE_MAP = {
    common = {
        label = "常规",
        color = "ffffff"
    },
    physical = {
        label = "物理",
        color = "d9d9d9"
    },
    magic = {
        label = "魔法",
        color = "4876ff"
    },
    real = {
        label = "真实",
        color = "ffd700"
    },
    absolute = {
        label = "绝对",
        color = "ee5c42"
    },
    fire = {
        label = "火",
        color = "f45454"
    },
    soil = {
        label = "土",
        color = "dbb745"
    },
    water = {
        label = "水",
        color = "85adee"
    },
    ice = {
        label = "冰",
        color = "85f4f4"
    },
    wind = {
        label = "风",
        color = "b6d7a8"
    },
    light = {
        label = "光",
        color = "f9f99c"
    },
    dark = {
        label = "暗",
        color = "696969"
    },
    wood = {
        label = "木",
        color = "7cbd60"
    },
    thunder = {
        label = "雷",
        color = "7cbd60"
    },
    poison = {
        label = "毒",
        color = "3cb371"
    },
    ghost = {
        label = "鬼",
        color = "383434"
    },
    metal = {
        label = "金",
        color = "f9f99c"
    },
    dragon = {
        label = "龙",
        color = "7cbd60"
    },
    insect = {
        label = "虫",
        color = "ba55d3"
    },
    god = {
        label = "神",
        color = "bf3eff"
    }
}
CONST_HERO_PRIMARY = {
    STR = "力量",
    AGI = "敏捷",
    INT = "智力",
}
CONST_HOTKEY = {
    { HotKey = "Q", Buttonpos1 = 0, Buttonpos2 = 0, },
    { HotKey = "W", Buttonpos1 = 1, Buttonpos2 = 0, },
    { HotKey = "E", Buttonpos1 = 2, Buttonpos2 = 0, },
    { HotKey = "R", Buttonpos1 = 3, Buttonpos2 = 0, },
    { HotKey = "A", Buttonpos1 = 0, Buttonpos2 = 1, },
    { HotKey = "S", Buttonpos1 = 1, Buttonpos2 = 1, },
    { HotKey = "D", Buttonpos1 = 2, Buttonpos2 = 1, },
    { HotKey = "F", Buttonpos1 = 3, Buttonpos2 = 1, },
    { HotKey = "Z", Buttonpos1 = 0, Buttonpos2 = 2, },
    { HotKey = "X", Buttonpos1 = 1, Buttonpos2 = 2, },
    { HotKey = "C", Buttonpos1 = 2, Buttonpos2 = 2, },
    { HotKey = "V", Buttonpos1 = 3, Buttonpos2 = 2, },
}
CONST_ITEM_CLASS = {
    Permanent = "永久",
    Charged = "可充",
    PowerUp = "力量提升",
    Artifact = "人造",
    Purchasable = "可购买",
    Campaign = "战役",
    Miscellaneous = "混杂",
}
--武器类型
CONST_WEAPON_TYPE = {
    missile = "箭矢",
    msplash = "箭矢(溅射)",
    mbounce = "箭矢(弹射)",
    mline = "箭矢(穿透)",
    normal = "近战",
    instant = "立即",
    artillery = "炮火",
    aline = "炮火(穿透)",
}
--武器声音
CONST_WEAPON_SOUND = {
    MetalHeavyBash = "金属重击",
    MetalMediumBash = "金属中击",
    MetalHeavyChop = "金属重砍",
    MetalMediumChop = "金属中砍",
    MetalLightChop = "金属轻砍",
    MetalHeavySlice = "金属重切",
    MetalMediumSlice = "金属中切",
    MetalLightSlice = "金属轻切",
    AxeMediumChop = "斧头中砍",
    RockHeavyBash = "岩石重击",
    WoodHeavyBash = "木头重击",
    WoodMediumBash = "木头中击",
    WoodLightBash = "木头轻击",
}
--移动类型
CONST_MOVE_TYPE = {
    foot = "步行",
    horse = "坐骑",
    fly = "飞行",
    hover = "浮空",
    float = "漂浮",
    amph = "两栖",
}
CONST_PLAYER_COLOR = {
    RED = cj.ConvertPlayerColor(0),
    BLUE = cj.ConvertPlayerColor(1),
    CYAN = cj.ConvertPlayerColor(2),
    PURPLE = cj.ConvertPlayerColor(3),
    YELLOW = cj.ConvertPlayerColor(4),
    ORANGE = cj.ConvertPlayerColor(5),
    GREEN = cj.ConvertPlayerColor(6),
    PINK = cj.ConvertPlayerColor(7),
    LIGHT_GRAY = cj.ConvertPlayerColor(8),
    LIGHT_BLUE = cj.ConvertPlayerColor(9),
    AQUA = cj.ConvertPlayerColor(10),
    BROWN = cj.ConvertPlayerColor(11)
}
CONST_EVENT = {
    attackDetect = "attackDetect",
    attackGetTarget = "attackGetTarget",
    attackReady = "attackReady",
    beAttackReady = "beAttackReady",
    attack = "attack",
    beAttack = "beAttack",
    skillStudy = "skillStudy",
    skillReady = "skillReady",
    skillStart = "skillStart",
    skillHappen = "skillHappen",
    skillStop = "skillStop",
    skillOver = "skillOver",
    itemUsed = "itemUsed",
    itemSell = "itemSell",
    itemDrop = "itemDrop",
    itemPawn = "itemPawn",
    itemGet = "itemGet",
    itemDestroy = "itemDestroy",
    itemMix = "itemMix",
    itemSeparate = "itemSeparate",
    itemOverWeight = "itemOverWeight",
    itemOverSlot = "itemOverSlot",
    damage = "damage",
    beDamage = "beDamage",
    avoid = "avoid",
    beAvoid = "beAvoid",
    breakArmor = "breakArmor",
    beBreakArmor = "beBreakArmor",
    swim = "swim",
    beSwim = "beSwim",
    broken = "broken",
    beBroken = "beBroken",
    silent = "silent",
    beSilent = "beSilent",
    unarm = "unarm",
    beUnarm = "beUnarm",
    fetter = "fetter",
    beFetter = "beFetter",
    bomb = "bomb",
    beBomb = "beBomb",
    lightningChain = "lightningChain",
    beLightningChain = "beLightningChain",
    crackFly = "crackFly",
    beCrackFly = "beCrackFly",
    rebound = "rebound",
    noAvoid = "noAvoid",
    beNoAvoid = "beNoAvoid",
    knocking = "knocking",
    beKnocking = "beKnocking",
    violence = "violence",
    beViolence = "beViolence",
    spilt = "spilt",
    beSpilt = "beSpilt",
    limitToughness = "limitToughness",
    hemophagia = "hemophagia",
    beHemophagia = "beHemophagia",
    skillHemophagia = "skillHemophagia",
    beSkillHemophagia = "beSkillHemophagia",
    punish = "punish",
    dead = "dead",
    kill = "kill",
    reborn = "reborn",
    levelUp = "levelUp",
    summon = "summon",
    enterUnitRange = "enterUnitRange",
    enterRect = "enterRect",
    leaveRect = "leaveRect",
    chat = "chat",
    esc = "esc",
    selection = "selection",
    unSelection = "unSelection",
    upgradeStart = "upgradeStart",
    upgradeCancel = "upgradeCancel",
    upgradeFinish = "upgradeFinish",
    constructStart = "constructStart",
    constructCancel = "constructCancel",
    constructFinish = "constructFinish",
    pickHero = "pickHero",
    playerLeave = "playerLeave",
}
HLUA_DEBUG = true
--记录运行时间rem方法
--只有key1时为记录，有key2时会打印对应记录间的差值，如：
--rem("a") --1
--rem("b") --2
--rem("c") --4
--print rem("a","b") =1
--print rem("b","c") =2
--print rem("a","c") =3
rem = function(key1, key2)
    if (HLUA_DEBUG == false) then
        return
    end
    if (type(key1) ~= "string") then
        return
    end
    if (key2 ~= nil and type(key2) ~= "string") then
        return
    end
    if (remStack == nil) then
        remStack = {}
    end
    remStack[key1] = os.clock()
    if (key2 ~= nil) then
        remStack[key2] = os.clock()
        print("[rem " .. key1 .. "->" .. key2 .. "]:" .. remStack[key2] - remStack[key1])
    end
end
--打印栈
print_stack = function(...)
    if (HLUA_DEBUG == false) then
        return
    end
    local out = {"[TRACE]"}
    local n = select("#", ...)
    for i = 1, n, 1 do
        local v = select(i, ...)
        out[#out + 1] = tostring(v)
    end
    out[#out + 1] = "\n"
    out[#out + 1] = debug.traceback("", 2)
    print(table.concat(out, " "))
    
end
--打印utf8->ansi编码,此方法可以打印出中文
print_mb = function(str)
    if (HLUA_DEBUG == false) then
        return
    end
    console.write(str)
end
--错误调试
print_err = function(val)
    if (HLUA_DEBUG == false) then
        return
    end
    print("---------h-lua-err---------")
    if (type(val) == "table") then
        print_mbr(val)
    else
        print_mb(val)
    end
    print_stack()
    print("---------------------------")
end
--打印对象table
print_r = function(t, printMethod, showDetail)
    if (HLUA_DEBUG == false) then
        return
    end
    local print_r_cache = {}
    printMethod = printMethod or print
    if (showDetail == nil) then
        showDetail = true
    end
    local function sub_print_r(tt, indent)
        if (print_r_cache[tostring(tt)]) then
            printMethod(indent .. "*" .. tostring(tt))
        else
            print_r_cache[tostring(tt)] = true
            if (type(tt) == "table") then
                for pos, val in pairs(tt) do
                    if (type(pos) == "userdata") then
                        pos = "userdata"
                    end
                    if (type(val) == "table") then
                        print(indent .. "[" .. pos .. "](" .. table.len(val) .. ") => " .. tostring(tt) .. " {")
                        sub_print_r(val, indent .. string.rep(" ", string.len(pos) + 8))
                        print(indent .. string.rep(" ", string.len(pos) + 6) .. "}")
                    elseif (showDetail == true) then
                        if (type(val) == "string") then
                            printMethod(indent .. "[" .. pos .. '] => "' .. val .. '"')
                        else
                            print(indent .. "[" .. pos .. "] => " .. tostring(val))
                        end
                    end
                end
            else
                printMethod(indent .. tostring(tt))
            end
        end
    end
    if (type(t) == "table") then
        print(tostring(t) .. "(" .. table.len(t) .. ") {")
        sub_print_r(t, "  ")
        print("}")
    else
        sub_print_r(t, "  ")
    end
    print()
end
--打印对象table,此方法可以打印出中文
print_mbr = function(t)
    print_r(t, print_mb, true)
end
--[[ json.lua
A compact pure-Lua JSON library.
The main functions are: json.stringify, json.parse.
## json.stringify:
This expects the following to be true of any tables being encoded:
 * They only have string or number keys. Number keys must be represented as
   strings in json; this is part of the json spec.
 * They are not recursive. Such a structure cannot be specified in json.
A Lua table is considered to be an array if and only if its set of keys is a
consecutive sequence of positive integers starting at 1. Arrays are encoded like
so: `[2, 3, false, "hi"]`. Any other type of Lua table is encoded as a json
object, encoded like so: `{"key1": 2, "key2": false}`.
Because the Lua nil value cannot be a key, and as a table value is considerd
equivalent to a missing key, there is no way to express the json "null" value in
a Lua table. The only way this will output "null" is if your entire input obj is
nil itself.
An empty Lua table, {}, could be considered either a json object or array -
it's an ambiguous edge case. We choose to treat this as an object as it is the
more general type.
To be clear, none of the above considerations is a limitation of this code.
Rather, it is what we get when we completely observe the json specification for
as arbitrary a Lua object as json is capable of expressing.
## json.parse:
This function parses json, with the exception that it does not pay attention to
\u-escaped unicode code points in strings.
It is difficult for Lua to return null as a value. In order to prevent the loss
of keys with a null value in a json string, this function uses the one-off
table value json.null (which is just an empty table) to indicate null values.
This way you can check if a value is null with the conditional
`val == json.null`.
If you have control over the data and are using Lua, I would recommend just
avoiding null values in your data to begin with.
--]]
json = {}
local function kind_of(obj)
    if type(obj) ~= 'table' then
        return type(obj)
    end
    local i = 1
    for _ in pairs(obj) do
        if obj[i] ~= nil then
            i = i + 1
        else
            return 'table'
        end
    end
    if i == 1 then
        return 'table'
    else
        return 'array'
    end
end
local function escape_str(s)
    local in_char = { '\\', '"', '/', '\b', '\f', '\n', '\r', '\t' }
    local out_char = { '\\', '"', '/', 'b', 'f', 'n', 'r', 't' }
    for i, c in ipairs(in_char) do
        s = s:gsub(c, '\\' .. out_char[i])
    end
    return s
end
local function skip_delim(str, pos, delim, err_if_missing)
    pos = pos + #str:match('^%s*', pos)
    if str:sub(pos, pos) ~= delim then
        if err_if_missing then
            error('Expected ' .. delim .. ' near position ' .. pos)
        end
        return pos, false
    end
    return pos + 1, true
end
local function parse_str_val(str, pos, val)
    val = val or ''
    local early_end_error = 'End of input found while parsing string.'
    if pos > #str then
        error(early_end_error)
    end
    local c = str:sub(pos, pos)
    if c == '"' then
        return val, pos + 1
    end
    if c ~= '\\' then
        return parse_str_val(str, pos + 1, val .. c)
    end
    
    local esc_map = { b = '\b', f = '\f', n = '\n', r = '\r', t = '\t' }
    local nextc = str:sub(pos + 1, pos + 1)
    if not nextc then
        error(early_end_error)
    end
    return parse_str_val(str, pos + 2, val .. (esc_map[nextc] or nextc))
end
local function parse_num_val(str, pos)
    local num_str = str:match('^-?%d+%.?%d*[eE]?[+-]?%d*', pos)
    local val = tonumber(num_str)
    if not val then
        error('Error parsing number at position ' .. pos .. '.')
    end
    return val, pos + #num_str
end
function json.stringify(obj, as_key)
    local s = {}  
    local kind = kind_of(obj)  
    if kind == 'array' then
        if as_key then
            error('Can\'t encode array as key.')
        end
        s[#s + 1] = '['
        for i, val in ipairs(obj) do
            if i > 1 then
                s[#s + 1] = ', '
            end
            s[#s + 1] = json.stringify(val)
        end
        s[#s + 1] = ']'
    elseif kind == 'table' then
        if as_key then
            error('Can\'t encode table as key.')
        end
        s[#s + 1] = '{'
        for k, v in pairs(obj) do
            if #s > 1 then
                s[#s + 1] = ', '
            end
            s[#s + 1] = json.stringify(k, true)
            s[#s + 1] = ':'
            s[#s + 1] = json.stringify(v)
        end
        s[#s + 1] = '}'
    elseif kind == 'string' then
        return '"' .. escape_str(obj) .. '"'
    elseif kind == 'number' then
        if as_key then
            return '"' .. tostring(obj) .. '"'
        end
        return tostring(obj)
    elseif kind == 'boolean' then
        return tostring(obj)
    elseif kind == 'nil' then
        return 'null'
    else
        error('Unjsonifiable type: ' .. kind .. '.')
    end
    return table.concat(s)
end
json.null = {}  
function json.parse(str, pos, end_delim)
    pos = pos or 1
    if str == nil then
        print_stack()
        error('json str is nil.')
    end
    if pos > #str then
        print_stack()
        error('Reached unexpected end of input.')
    end
    local pos = pos + #str:match('^%s*', pos)  
    local first = str:sub(pos, pos)
    if first == '{' then
        
        local obj, key, delim_found = {}, true, true
        pos = pos + 1
        while true do
            key, pos = json.parse(str, pos, '}')
            if key == nil then
                return obj, pos
            end
            if not delim_found then
                error('Comma missing between object items.')
            end
            pos = skip_delim(str, pos, ':', true)  
            obj[key], pos = json.parse(str, pos)
            pos, delim_found = skip_delim(str, pos, ',')
        end
    elseif first == '[' then
        
        local arr, val, delim_found = {}, true, true
        pos = pos + 1
        while true do
            val, pos = json.parse(str, pos, ']')
            if val == nil then
                return arr, pos
            end
            if not delim_found then
                error('Comma missing between array items.')
            end
            arr[#arr + 1] = val
            pos, delim_found = skip_delim(str, pos, ',')
        end
    elseif first == '"' then
        
        return parse_str_val(str, pos + 1)
    elseif first == '-' or first:match('%d') then
        
        return parse_num_val(str, pos)
    elseif first == end_delim then
        
        return nil, pos + 1
    else
        
        local literals = { ['true'] = true, ['false'] = false, ['null'] = json.null }
        for lit_str, lit_val in pairs(literals) do
            local lit_end = pos + #lit_str - 1
            if str:sub(pos, lit_end) == lit_str then
                return lit_val, lit_end + 1
            end
        end
        local pos_info_str = 'position ' .. pos .. ': ' .. str:sub(pos, pos + 10)
        error('Invalid json syntax starting at ' .. pos_info_str)
    end
end
md5 = {
    _VERSION = "md5.lua 1.1.0",
    _DESCRIPTION = "MD5 computation in Lua (5.1-3, LuaJIT)",
    _URL = "https://github.com/kikito/md5.lua",
    _LICENSE = [[
    MIT LICENSE
    Copyright (c) 2013 Enrique García Cota + Adam Baldwin + hanzao + Equi 4 Software
    Permission is hereby granted, free of charge, to any person obtaining a
    copy of this software and associated documentation files (the
    "Software"), to deal in the Software without restriction, including
    without limitation the rights to use, copy, modify, merge, publish,
    distribute, sublicense, and/or sell copies of the Software, and to
    permit persons to whom the Software is furnished to do so, subject to
    the following conditions:
    The above copyright notice and this permission notice shall be included
    in all copies or substantial portions of the Software.
    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
    OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
    MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
    IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
    CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
    TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
    SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
  ]]
}
local char, byte, format, rep, sub = string.char, string.byte, string.format, string.rep, string.sub
local bit_or, bit_and, bit_not, bit_xor, bit_rshift, bit_lshift
local ok, bit = pcall(require, "bit")
if ok then
    bit_or, bit_and, bit_not, bit_xor, bit_rshift, bit_lshift = bit.bor,
    bit.band,
    bit.bnot,
    bit.bxor,
    bit.rshift,
    bit.lshift
else
    ok, bit = pcall(require, "bit32")
    if ok then
        bit_not = bit.bnot
        local tobit = function(n)
            return n <= 0x7fffffff and n or -(bit_not(n) + 1)
        end
        local normalize = function(f)
            return function(a, b)
                return tobit(f(tobit(a), tobit(b)))
            end
        end
        bit_or, bit_and, bit_xor = normalize(bit.bor), normalize(bit.band), normalize(bit.bxor)
        bit_rshift, bit_lshift = normalize(bit.rshift), normalize(bit.lshift)
    else
        local function tbl2number(tbl)
            local result = 0
            local power = 1
            for i = 1, #tbl do
                result = result + tbl[i] * power
                power = power * 2
            end
            return result
        end
        local function expand(t1, t2)
            local big, small = t1, t2
            if (#big < #small) then
                big, small = small, big
            end
            
            for i = #small + 1, #big do
                small[i] = 0
            end
        end
        local to_bits  
        bit_not = function(n)
            local tbl = to_bits(n)
            local size = math.max(#tbl, 32)
            for i = 1, size do
                if (tbl[i] == 1) then
                    tbl[i] = 0
                else
                    tbl[i] = 1
                end
            end
            return tbl2number(tbl)
        end
        
        to_bits = function(n)
            if (n < 0) then
                
                return to_bits(bit_not(math.abs(n)) + 1)
            end
            
            local tbl = {}
            local cnt = 1
            local last
            while n > 0 do
                last = n % 2
                tbl[cnt] = last
                n = (n - last) / 2
                cnt = cnt + 1
            end
            return tbl
        end
        bit_or = function(m, n)
            local tbl_m = to_bits(m)
            local tbl_n = to_bits(n)
            expand(tbl_m, tbl_n)
            local tbl = {}
            for i = 1, #tbl_m do
                if (tbl_m[i] == 0 and tbl_n[i] == 0) then
                    tbl[i] = 0
                else
                    tbl[i] = 1
                end
            end
            return tbl2number(tbl)
        end
        bit_and = function(m, n)
            local tbl_m = to_bits(m)
            local tbl_n = to_bits(n)
            expand(tbl_m, tbl_n)
            local tbl = {}
            for i = 1, #tbl_m do
                if (tbl_m[i] == 0 or tbl_n[i] == 0) then
                    tbl[i] = 0
                else
                    tbl[i] = 1
                end
            end
            return tbl2number(tbl)
        end
        bit_xor = function(m, n)
            local tbl_m = to_bits(m)
            local tbl_n = to_bits(n)
            expand(tbl_m, tbl_n)
            local tbl = {}
            for i = 1, #tbl_m do
                if (tbl_m[i] ~= tbl_n[i]) then
                    tbl[i] = 1
                else
                    tbl[i] = 0
                end
            end
            return tbl2number(tbl)
        end
        bit_rshift = function(n, bits)
            local high_bit = 0
            if (n < 0) then
                
                n = bit_not(math.abs(n)) + 1
                high_bit = 0x80000000
            end
            local floor = math.floor
            for i = 1, bits do
                n = n / 2
                n = bit_or(floor(n), high_bit)
            end
            return floor(n)
        end
        bit_lshift = function(n, bits)
            if (n < 0) then
                
                n = bit_not(math.abs(n)) + 1
            end
            for i = 1, bits do
                n = n * 2
            end
            return bit_and(n, 0xFFFFFFFF)
        end
    end
end
local function lei2str(i)
    local f = function(s)
        return char(bit_and(bit_rshift(i, s), 255))
    end
    return f(0) .. f(8) .. f(16) .. f(24)
end
local function str2bei(s)
    local v = 0
    for i = 1, #s do
        v = v * 256 + byte(s, i)
    end
    return v
end
local function str2lei(s)
    local v = 0
    for i = #s, 1, -1 do
        v = v * 256 + byte(s, i)
    end
    return v
end
local function cut_le_str(s, ...)
    local o, r = 1, {}
    local args = { ... }
    for i = 1, #args do
        table.insert(r, str2lei(sub(s, o, o + args[i] - 1)))
        o = o + args[i]
    end
    return r
end
local swap = function(w)
    return str2bei(lei2str(w))
end
local CONSTS = {
    0xd76aa478,
    0xe8c7b756,
    0x242070db,
    0xc1bdceee,
    0xf57c0faf,
    0x4787c62a,
    0xa8304613,
    0xfd469501,
    0x698098d8,
    0x8b44f7af,
    0xffff5bb1,
    0x895cd7be,
    0x6b901122,
    0xfd987193,
    0xa679438e,
    0x49b40821,
    0xf61e2562,
    0xc040b340,
    0x265e5a51,
    0xe9b6c7aa,
    0xd62f105d,
    0x02441453,
    0xd8a1e681,
    0xe7d3fbc8,
    0x21e1cde6,
    0xc33707d6,
    0xf4d50d87,
    0x455a14ed,
    0xa9e3e905,
    0xfcefa3f8,
    0x676f02d9,
    0x8d2a4c8a,
    0xfffa3942,
    0x8771f681,
    0x6d9d6122,
    0xfde5380c,
    0xa4beea44,
    0x4bdecfa9,
    0xf6bb4b60,
    0xbebfbc70,
    0x289b7ec6,
    0xeaa127fa,
    0xd4ef3085,
    0x04881d05,
    0xd9d4d039,
    0xe6db99e5,
    0x1fa27cf8,
    0xc4ac5665,
    0xf4292244,
    0x432aff97,
    0xab9423a7,
    0xfc93a039,
    0x655b59c3,
    0x8f0ccc92,
    0xffeff47d,
    0x85845dd1,
    0x6fa87e4f,
    0xfe2ce6e0,
    0xa3014314,
    0x4e0811a1,
    0xf7537e82,
    0xbd3af235,
    0x2ad7d2bb,
    0xeb86d391,
    0x67452301,
    0xefcdab89,
    0x98badcfe,
    0x10325476
}
local f = function(x, y, z)
    return bit_or(bit_and(x, y), bit_and(-x - 1, z))
end
local g = function(x, y, z)
    return bit_or(bit_and(x, z), bit_and(y, -z - 1))
end
local h = function(x, y, z)
    return bit_xor(x, bit_xor(y, z))
end
local i = function(x, y, z)
    return bit_xor(y, bit_or(x, -z - 1))
end
local z = function(ff, a, b, c, d, x, s, ac)
    a = bit_and(a + ff(b, c, d) + x + ac, 0xFFFFFFFF)
    
    return bit_or(bit_lshift(bit_and(a, bit_rshift(0xFFFFFFFF, s)), s), bit_rshift(a, 32 - s)) + b
end
local function transform(A, B, C, D, X)
    local a, b, c, d = A, B, C, D
    local t = CONSTS
    a = z(f, a, b, c, d, X[0], 7, t[1])
    d = z(f, d, a, b, c, X[1], 12, t[2])
    c = z(f, c, d, a, b, X[2], 17, t[3])
    b = z(f, b, c, d, a, X[3], 22, t[4])
    a = z(f, a, b, c, d, X[4], 7, t[5])
    d = z(f, d, a, b, c, X[5], 12, t[6])
    c = z(f, c, d, a, b, X[6], 17, t[7])
    b = z(f, b, c, d, a, X[7], 22, t[8])
    a = z(f, a, b, c, d, X[8], 7, t[9])
    d = z(f, d, a, b, c, X[9], 12, t[10])
    c = z(f, c, d, a, b, X[10], 17, t[11])
    b = z(f, b, c, d, a, X[11], 22, t[12])
    a = z(f, a, b, c, d, X[12], 7, t[13])
    d = z(f, d, a, b, c, X[13], 12, t[14])
    c = z(f, c, d, a, b, X[14], 17, t[15])
    b = z(f, b, c, d, a, X[15], 22, t[16])
    a = z(g, a, b, c, d, X[1], 5, t[17])
    d = z(g, d, a, b, c, X[6], 9, t[18])
    c = z(g, c, d, a, b, X[11], 14, t[19])
    b = z(g, b, c, d, a, X[0], 20, t[20])
    a = z(g, a, b, c, d, X[5], 5, t[21])
    d = z(g, d, a, b, c, X[10], 9, t[22])
    c = z(g, c, d, a, b, X[15], 14, t[23])
    b = z(g, b, c, d, a, X[4], 20, t[24])
    a = z(g, a, b, c, d, X[9], 5, t[25])
    d = z(g, d, a, b, c, X[14], 9, t[26])
    c = z(g, c, d, a, b, X[3], 14, t[27])
    b = z(g, b, c, d, a, X[8], 20, t[28])
    a = z(g, a, b, c, d, X[13], 5, t[29])
    d = z(g, d, a, b, c, X[2], 9, t[30])
    c = z(g, c, d, a, b, X[7], 14, t[31])
    b = z(g, b, c, d, a, X[12], 20, t[32])
    a = z(h, a, b, c, d, X[5], 4, t[33])
    d = z(h, d, a, b, c, X[8], 11, t[34])
    c = z(h, c, d, a, b, X[11], 16, t[35])
    b = z(h, b, c, d, a, X[14], 23, t[36])
    a = z(h, a, b, c, d, X[1], 4, t[37])
    d = z(h, d, a, b, c, X[4], 11, t[38])
    c = z(h, c, d, a, b, X[7], 16, t[39])
    b = z(h, b, c, d, a, X[10], 23, t[40])
    a = z(h, a, b, c, d, X[13], 4, t[41])
    d = z(h, d, a, b, c, X[0], 11, t[42])
    c = z(h, c, d, a, b, X[3], 16, t[43])
    b = z(h, b, c, d, a, X[6], 23, t[44])
    a = z(h, a, b, c, d, X[9], 4, t[45])
    d = z(h, d, a, b, c, X[12], 11, t[46])
    c = z(h, c, d, a, b, X[15], 16, t[47])
    b = z(h, b, c, d, a, X[2], 23, t[48])
    a = z(i, a, b, c, d, X[0], 6, t[49])
    d = z(i, d, a, b, c, X[7], 10, t[50])
    c = z(i, c, d, a, b, X[14], 15, t[51])
    b = z(i, b, c, d, a, X[5], 21, t[52])
    a = z(i, a, b, c, d, X[12], 6, t[53])
    d = z(i, d, a, b, c, X[3], 10, t[54])
    c = z(i, c, d, a, b, X[10], 15, t[55])
    b = z(i, b, c, d, a, X[1], 21, t[56])
    a = z(i, a, b, c, d, X[8], 6, t[57])
    d = z(i, d, a, b, c, X[15], 10, t[58])
    c = z(i, c, d, a, b, X[6], 15, t[59])
    b = z(i, b, c, d, a, X[13], 21, t[60])
    a = z(i, a, b, c, d, X[4], 6, t[61])
    d = z(i, d, a, b, c, X[11], 10, t[62])
    c = z(i, c, d, a, b, X[2], 15, t[63])
    b = z(i, b, c, d, a, X[9], 21, t[64])
    return bit_and(A + a, 0xFFFFFFFF), bit_and(B + b, 0xFFFFFFFF), bit_and(C + c, 0xFFFFFFFF), bit_and(
        D + d,
        0xFFFFFFFF
    )
end
----------------------------------------------------------------
local function md5_update(self, s)
    self.pos = self.pos + #s
    s = self.buf .. s
    for ii = 1, #s - 63, 64 do
        local X = cut_le_str(sub(s, ii, ii + 63), 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4)
        assert(#X == 16)
        X[0] = table.remove(X, 1) 
        self.a, self.b, self.c, self.d = transform(self.a, self.b, self.c, self.d, X)
    end
    self.buf = sub(s, math.floor(#s / 64) * 64 + 1, #s)
    return self
end
local function md5_finish(self)
    local msgLen = self.pos
    local padLen = 56 - msgLen % 64
    if msgLen % 64 > 56 then
        padLen = padLen + 64
    end
    if padLen == 0 then
        padLen = 64
    end
    local s = char(128) ..
        rep(char(0), padLen - 1) .. lei2str(bit_and(8 * msgLen, 0xFFFFFFFF)) .. lei2str(math.floor(msgLen / 0x20000000))
    md5_update(self, s)
    assert(self.pos % 64 == 0)
    return lei2str(self.a) .. lei2str(self.b) .. lei2str(self.c) .. lei2str(self.d)
end
----------------------------------------------------------------
function md5.new()
    return {
        a = CONSTS[65],
        b = CONSTS[66],
        c = CONSTS[67],
        d = CONSTS[68],
        pos = 0,
        buf = "",
        update = md5_update,
        finish = md5_finish
    }
end
function md5.tohex(s)
    return format(
        "%08x%08x%08x%08x",
        str2bei(sub(s, 1, 4)),
        str2bei(sub(s, 5, 8)),
        str2bei(sub(s, 9, 12)),
        str2bei(sub(s, 13, 16))
    )
end
function md5.sum(s)
    return md5.new():update(s):finish()
end
function md5.sumhexa(s)
    return md5.tohex(md5.sum(s))
end
hRuntime = {
    --注册runtime的数据
    register = {
        unit = function(json)
            hslk_global.unitsKV[json.UNIT_ID] = json
        end,
        item = function(json)
            hslk_global.itemsKV[json.ITEM_ID] = json
            if (type(json.SHADOW_ID) == "string") then
                hslk_global.itemsShadowKV[json.ITEM_ID] = json.SHADOW_ID
                hslk_global.itemsFaceKV[json.SHADOW_ID] = json.ITEM_ID
            end
        end,
        ability = function(json)
            hslk_global.abilitiesKV[json.ABILITY_ID] = json
        end
    },
    system = {},
    logic = {},
    time = {},
    is = {},
    message = {},
    sound = {},
    mark = {},
    effect = {},
    lightning = {},
    weather = {},
    env = {},
    camera = {},
    event = {
        register = {},
        trigger = {}
    },
    textTag = {},
    rect = {},
    player = {},
    award = {},
    unit = {},
    enemy = {},
    group = {},
    hero = {},
    heroBuildSelection = {},
    skill = {},
    attribute = {},
    attributeDiff = {},
    attributeDamaging = {},
    attributeGroup = {
        life_back = {},
        mana_back = {},
        punish = {}
    },
    attributeThreeBuff = {
        
        
        str = {
            life = 10, 
            life_back = 0.1 
        },
        agi = {
            attack_white = 1, 
            defend = 0.01 
        },
        int = {
            attack_green = 1, 
            mana = 6, 
            mana_back = 0.05 
        }
    },
    item = {},
    leaderBoard = {},
    multiBoard = {}
}
hRuntime.clear = function(handle)
    if (handle == nil) then
        return
    end
    for k, v in pairs(hRuntime) do
        if (type(v) == "table") then
            if (v[handle] ~= nil) then
                v[handle] = nil
            end
            if (k == "event") then
                if (v.register[handle] ~= nil) then
                    v.register[handle] = nil
                end
            end
        end
    end
end
for i = 1, bj_MAX_PLAYER_SLOTS, 1 do
    local p = cj.Player(i - 1)
    
    hRuntime.is[i] = {}
    hRuntime.is[i].isComputer = true
    hRuntime.is[i].isAutoConvertGoldToLumber = true
    
    hRuntime.sound[i] = {}
    hRuntime.sound[i].currentBgm = nil
    hRuntime.sound[i].bgmDelay = 3.00
    
    hRuntime.player[i] = {}
    
    hRuntime.camera[i] = {}
    hRuntime.camera[i].model = "normal" 
    hRuntime.camera[i].isShocking = false
end
--获取一个table的正确长度
table.len = function(table)
    local len = 0
    for _, _ in pairs(table) do
        len = len + 1
    end
    return len
end
--随机在数组内取一个
table.random = function(arr)
    local keys = {}
    for k, _ in pairs(arr) do
        table.insert(keys, k)
    end
    local val = arr[keys[math.random(1, #keys)]]
    keys = nil
    return val
end
--克隆table
table.clone = function(org)
    local function copy(org1, res)
        for k, v in pairs(org1) do
            if type(v) ~= "table" then
                res[k] = v
            else
                res[k] = {}
                copy(v, res[k])
            end
        end
    end
    local res = {}
    copy(org, res)
    return res
end
--合并table
table.merge = function(table1, table2)
    local tempTable = {}
    if (table1 ~= nil) then
        tempTable = table.clone(table1)
    end
    if (table2 == nil) then
        return tempTable
    end
    if (table.len(table2) == #table2) then
        for _, v in ipairs(table2) do
            table.insert(tempTable, v)
        end
    else
        for k, v in pairs(table2) do
            tempTable[k] = v
        end
    end
    return tempTable
end
--在数组内
table.includes = function(val, arr)
    local isin = false
    if (val == nil or #arr <= 0) then
        return isin
    end
    for k, v in pairs(arr) do
        if (v == val) then
            isin = true
            break
        end
    end
    return isin
end
--删除数组一次某个值(qty次,默认删除全部)
table.delete = function(val, arr, qty)
    qty = qty or -1
    local q = 0
    for k, v in pairs(arr) do
        if (v == val) then
            q = q + 1
            table.remove(arr, k)
            if (qty ~= -1 and q >= qty) then
                break
            end
        end
    end
end
--获取一个对象的id
string.char2id = function(idChar)
    if (idChar == nil or type(idChar) ~= "string") then
        print_stack()
        return
    end
    local len = string.len(idChar)
    local id = 0
    for i = 1, len, 1 do
        if (i == 1) then
            id = string.byte(idChar, i)
        else
            id = id * 256 + string.byte(idChar, i)
        end
    end
    return id
end
--获取一个对象的id字符串
string.id2char = function(id)
    if (id == nil or type(id) ~= "number") then
        print_stack()
        print(id)
        return
    end
    return string.char(id // 0x1000000) ..
        string.char(id // 0x10000 % 0x100) .. string.char(id // 0x100 % 0x100) .. string.char(id % 0x100)
end
--获取字符串真实长度
string.mb_len = function(inputstr)
    local lenInByte = #inputstr
    local width = 0
    local i = 1
    while (i <= lenInByte) do
        local curByte = string.byte(inputstr, i)
        local byteCount = 1
        if curByte > 0 and curByte <= 127 then
            byteCount = 1 --1字节字符
        elseif curByte >= 192 and curByte < 223 then
            byteCount = 2 --双字节字符
        elseif curByte >= 224 and curByte < 239 then
            byteCount = 3 --汉字
        elseif curByte >= 240 and curByte <= 247 then
            byteCount = 4 --4字节字符
        end
        local char = string.sub(inputstr, i, i + byteCount - 1)
        i = i + byteCount 
        width = width + 1 
    end
    return width
end
--生成MD5
string.md5 = function(t)
    if (type(t) == "string") then
        return md5.sumhexa(t)
    elseif (type(t) == "table") then
        table.sort(t)
        return md5.sumhexa(json.stringify(t))
    end
    print_err("MD5 fail!")
    return
end
--根据值获取一个key
string.vkey = function(t)
    if (type(t) == "string") then
        return t
    elseif (type(t) == "table") then
        local j = ""
        local nt = {}
        for _, v in pairs(t) do
            if (type(v) == "table") then
                v = "_T_"
            else
                v = tostring(v)
            end
            table.insert(nt, v)
        end
        if (#nt > 0) then
            table.sort(nt)
            for _, v in ipairs(nt) do
                j = j .. v
            end
        else
            j = "_"
        end
        nt = nil
        return j
    end
end
--转义
string.addslashes = function(s)
    local in_char = {"\\", '"', "/", "\b", "\f", "\n", "\r", "\t"}
    local out_char = {"\\", '"', "/", "b", "f", "n", "r", "t"}
    for i, c in ipairs(in_char) do
        s = s:gsub(c, "\\" .. out_char[i])
    end
    return s
end
--反转义
string.stripslashes = function(s)
    local in_char = {"\\", '"', "/", "b", "f", "n", "r", "t"}
    local out_char = {"\\", '"', "/", "\b", "\f", "\n", "\r", "\t"}
    for i, c in ipairs(in_char) do
        s = s:gsub("\\" .. c, out_char[i])
    end
    return s
end
--base64编码
string.base64Encode = function(source_str)
    local b64chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
    local s64 = ""
    local str = source_str
    while #str > 0 do
        local bytes_num = 0
        local buf = 0
        for byte_cnt = 1, 3 do
            buf = (buf * 256)
            if #str > 0 then
                buf = buf + string.byte(str, 1, 1)
                str = string.sub(str, 2)
                bytes_num = bytes_num + 1
            end
        end
        for group_cnt = 1, (bytes_num + 1) do
            local b64char = math.fmod(math.floor(buf / 262144), 64) + 1
            s64 = s64 .. string.sub(b64chars, b64char, b64char)
            buf = buf * 64
        end
        for fill_cnt = 1, (3 - bytes_num) do
            s64 = s64 .. "="
        end
    end
    return s64
end
--base64解码
string.base64Decode = function(str64)
    local b64chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
    local temp = {}
    for i = 1, 64 do
        temp[string.sub(b64chars, i, i)] = i
    end
    temp["="] = 0
    local str = ""
    for i = 1, #str64, 4 do
        if i > #str64 then
            break
        end
        local data = 0
        local str_count = 0
        for j = 0, 3 do
            local str1 = string.sub(str64, i + j, i + j)
            if not temp[str1] then
                return
            end
            if temp[str1] < 1 then
                data = data * 64
            else
                data = data * 64 + temp[str1] - 1
                str_count = str_count + 1
            end
        end
        for j = 16, 0, -8 do
            if str_count > 0 then
                str = str .. string.char(math.floor(data / math.pow(2, j)))
                data = math.mod(data, math.pow(2, j))
                str_count = str_count - 1
            end
        end
    end
    local last = tonumber(string.byte(str, string.len(str), string.len(str)))
    if last == 0 then
        str = string.sub(str, 1, string.len(str) - 1)
    end
    return str
end
--把字符串以分隔符打散为数组
string.explode = function(delimeter, str)
    local res = {}
    local start, start_pos, end_pos = 1, 1, 1
    while true do
        start_pos, end_pos = string.find(str, delimeter, start, true)
        if not start_pos then
            break
        end
        table.insert(res, string.sub(str, start, start_pos - 1))
        start = end_pos + 1
    end
    table.insert(res, string.sub(str, start))
    return res
end
--把数组以分隔符拼接回字符串
string.implode = function(delimeter, table)
    local str
    for _, v in ipairs(table) do
        if (str == nil) then
            str = v
        else
            str = str .. delimeter .. v
        end
    end
    return str
end
--统计某个子串出现的次数
string.findCount = function(str, pattern)
    if (str == nil or pattern == nil) then
        return
    end
    local s
    local e = 0
    local qty = 0
    while (true) do
        s, e = string.find(str, pattern, e + 1)
        if (s == nil) then
            break
        end
        qty = qty + 1
        if (e == nil) then
            break
        end
    end
    return qty
end
--极坐标位移
math.polarProjection = function(x, y, dist, angle)
    return {
        x = x + dist * math.cos(angle * bj_DEGTORAD),
        y = y + dist * math.sin(angle * bj_DEGTORAD),
    }
end
math.round = function(decimal)
    return math.floor((decimal * 100) + 0.5) * 0.01
end
--数字格式化
math.numberFormat = function(value)
    local txt = ""
    if (value > 10000 * 10000 * 10000 * 10000) then
        txt = string.format('%.2f', value / 10000 * 10000 * 10000 * 10000) .. "亿亿"
    elseif (value > 10000 * 10000 * 10000) then
        txt = string.format('%.2f', value / 10000 * 10000 * 10000) .. "万亿"
    elseif (value > 10000 * 10000) then
        txt = string.format('%.2f', value / 10000 * 10000) .. "亿"
    elseif (value > 10000) then
        txt = string.format('%.2f', value / 10000) .. "万"
    elseif (value > 1000) then
        txt = string.format('%.2f', value / 1000) .. "千"
    else
        txt = string.format('%.2f', value)
    end
    return txt
end
--获取两个坐标间角度，如果其中一个单位为空 返回0
math.getDegBetweenXY = function(x1, y1, x2, y2)
    return bj_RADTODEG * cj.Atan2(y2 - y1, x2 - x1)
end
--获取两个点间角度，如果其中一个单位为空 返回0
math.getDegBetweenLoc = function(l1, l2)
    if (l1 == nil or l2 == nil) then
        return 0
    end
    return math.getDegBetweenXY(cj.GetLocationX(l1), cj.GetLocationY(l1), cj.GetLocationX(l2), cj.GetLocationY(l2))
end
--获取两个单位间角度，如果其中一个单位为空 返回0
math.getDegBetweenUnit = function(u1, u2)
    if (u1 == nil or u2 == nil) then
        return 0
    end
    return math.getDegBetweenXY(cj.GetUnitX(u1), cj.GetUnitY(u1), cj.GetUnitX(u2), cj.GetUnitY(u2))
end
--获取两个坐标距离
math.getDistanceBetweenXY = function(x1, y1, x2, y2)
    local dx = x2 - x1
    local dy = y2 - y1
    return cj.SquareRoot(dx * dx + dy * dy)
end
--获取两个点距离
math.getDistanceBetweenLoc = function(l1, l2)
    return math.getDistanceBetweenXY(cj.GetLocationX(l1), cj.GetLocationY(l1), cj.GetLocationX(l2), cj.GetLocationY(l2))
end
--获取两个单位距离
math.getDistanceBetweenUnit = function(u1, u2)
    return math.getDistanceBetweenXY(cj.GetUnitX(u1), cj.GetUnitY(u1), cj.GetUnitX(u2), cj.GetUnitY(u2))
end
hColor = {
    mixed = function(str, color)
        if (str == nil or color == nil) then
            print_stack()
            return str
        end
        return "|cff" .. color .. str .. "|r"
    end
}
hColor.gold = function(str)
    return hColor.mixed(str, "ffcc00")
end
hColor.white = function(str)
    return hColor.mixed(str, "ffffff")
end
hColor.black = function(str)
    return hColor.mixed(str, "000000")
end
hColor.grey = function(str)
    return hColor.mixed(str, "c0c0c0")
end
hColor.redLight = function(str)
    return hColor.mixed(str, "ff8080")
end
hColor.red = function(str)
    return hColor.mixed(str, "ff3939")
end
hColor.greenLight = function(str)
    return hColor.mixed(str, "ccffcc")
end
hColor.green = function(str)
    return hColor.mixed(str, "80ff00")
end
hColor.yellowLight = function(str)
    return hColor.mixed(str, "ffffcc")
end
hColor.yellow = function(str)
    return hColor.mixed(str, "ffff00")
end
hColor.skyLight = function(str)
    return hColor.mixed(str, "ccffff")
end
hColor.sky = function(str)
    return hColor.mixed(str, "80ffff")
end
hColor.seaLight = function(str)
    return hColor.mixed(str, "99ccff")
end
hColor.sea = function(str)
    return hColor.mixed(str, "00ccff")
end
hColor.purpleLight = function(str)
    return hColor.mixed(str, "ee82ee")
end
hColor.purple = function(str)
    return hColor.mixed(str, "ff59ff")
end
local txt = ""
txt = txt .. "h-lua完全独立，不依赖任何游戏平台（如YDWE、JAPI、DzApi * 支持使用）"
txt = txt .. "|n包含多样丰富的属性系统，可以轻松做出平时难以甚至不能做出的地图效果"
txt = txt .. "|n内置多达几十种以上的自定义事件，轻松实现神奇的主动和被动效果"
txt = txt .. "|n自带物品合成，免去自行编写的困惑。丰富的自定义技能模板"
txt = txt .. "|n镜头、单位组、过滤器、背景音乐、天气等也应有尽有"
txt = txt .. "|n想要了解更多，官方QQ群：325338043 官网教程：hlua.book.hunzsig.org"
bj.CreateQuestBJ(
    bj_QUESTTYPE_OPT_DISCOVERED,
    "h-lua",
    txt,
    "ReplaceableTextures\\CommandButtons\\BTNTomeOfRetraining.blp"
)
txt = ""
txt = txt .. "-random 随机选择"
txt = txt .. "|n-repick 重新选择"
bj.CreateQuestBJ(
    bj_QUESTTYPE_OPT_DISCOVERED,
    "选择英雄指令",
    txt,
    "ReplaceableTextures\\CommandButtons\\BTNTomeOfRetraining.blp"
)
txt = ""
txt = txt .. "-apc 设定是否自动转换黄金为木头"
txt = txt .. "|n获得黄金超过100万时，自动按照比率转换多余的部分为木头"
txt = txt .. "|n如果超过时没有开启，会寄存下来，待开启再转换(上限1000万)"
bj.CreateQuestBJ(
    bj_QUESTTYPE_OPT_DISCOVERED,
    "设定自动转金为木",
    txt,
    "ReplaceableTextures\\CommandButtons\\BTNTomeOfRetraining.blp"
)
local HSK = {
    COMMON = 99,
    PLAYER_MAP_LEVEL_AWARD_MAX = 100,
    PLAYER_MAP_LEVEL_AWARD = 101,
    UNIT_TOKEN = 102,
    UNIT_TOKEN_LEAP = 103,
    UNIT_TREE = 104,
    SKILL_ITEM_SEPARATE = 105,
    SKILL_BREAK = 106,
    SKILL_SWIM_UNLIMIT = 107,
    SKILL_INVISIBLE = 108,
    SKILL_HERO_TAVERN_SELECTION = 109,
    UNIT_HERO_TAVERN = 110,
    UNIT_HERO_TAVERN_TOKEN = 111,
    UNIT_HERO_DEATH_TOKEN = 112,
    ITEM_MOMENT = 113,
    ATTR_STR_GREEN_ADD = 114,
    ATTR_STR_GREEN_SUB = 115,
    ATTR_AGI_GREEN_ADD = 116,
    ATTR_AGI_GREEN_SUB = 117,
    ATTR_INT_GREEN_ADD = 118,
    ATTR_INT_GREEN_SUB = 119,
    ATTR_ATTACK_GREEN_ADD = 120,
    ATTR_ATTACK_GREEN_SUB = 121,
    ATTR_ATTACK_WHITE_ADD = 122,
    ATTR_ATTACK_WHITE_SUB = 123,
    ATTR_ITEM_ATTACK_WHITE_ADD = 124,
    ATTR_ITEM_ATTACK_WHITE_SUB = 125,
    ATTR_ATTACK_SPEED_ADD = 126,
    ATTR_ATTACK_SPEED_SUB = 127,
    ATTR_DEFEND_ADD = 128,
    ATTR_DEFEND_SUB = 129,
    ATTR_MANA_ADD = 130,
    ATTR_MANA_SUB = 131,
    ATTR_LIFE_ADD = 132,
    ATTR_LIFE_SUB = 133,
    ATTR_AVOID_ADD = 134,
    ATTR_AVOID_SUB = 135,
    ATTR_SIGHT_ADD = 136,
    ATTR_SIGHT_SUB = 137,
    ENV_MODEL_NAME = 138,
    ENV_MODEL = 139,
    EX_SHAPESHIFT = 200
}
hslk_global = {
    dzapi_map_level_award = {},
    item_moment = {},
    env_model = {},
    skill_item_separate = 0,
    skill_break = {},
    skill_swim_unlimit = 0,
    skill_hero_tavern_selection = 0,
    skill_shapeshift = {},
    unit_token = 0,
    unit_token_leap = 0,
    unit_hero_tavern = 0, 
    unit_hero_tavern_token = 0, 
    unit_hero_death_token = 0,
    heroesLen = 0,
    heroes = {},
    heroesKV = {},
    heroesItems = {},
    heroesItemsKV = {},
    unitsKV = {},
    itemsKV = {},
    itemsShadowKV = {},
    itemsFaceKV = {},
    abilitiesKV = {},
    attr = {
        agi_green = {
            add = {},
            sub = {}
        },
        int_green = {
            add = {},
            sub = {}
        },
        str_green = {
            add = {},
            sub = {}
        },
        attack_green = {
            add = {},
            sub = {}
        },
        attack_white = {
            add = {},
            sub = {}
        },
        item_attack_white = {
            add = {},
            sub = {}
        },
        attack_speed = {
            add = {},
            sub = {}
        },
        defend = {
            add = {},
            sub = {}
        },
        life = {
            add = {},
            sub = {}
        },
        mana = {
            add = {},
            sub = {}
        },
        avoid = {
            add = 0,
            sub = 0
        },
        sight = {
            add = {},
            sub = {}
        },
        sightTotal = {}
    }
}
--skill_item_separate
hslk_global.skill_item_separate = cj.LoadInteger(cg.hash_hslk, HSK.COMMON, HSK.SKILL_ITEM_SEPARATE)
--skill_break
for dur = 1, 10, 1 do
    local swDur = dur * 0.05
    hslk_global.skill_break[swDur] = cj.LoadInteger(cg.hash_hslk, HSK.SKILL_BREAK, dur)
end
--skill_swim_unlimit
hslk_global.skill_swim_unlimit = cj.LoadInteger(cg.hash_hslk, HSK.COMMON, HSK.SKILL_SWIM_UNLIMIT)
--skill_invisible
hslk_global.skill_invisible = cj.LoadInteger(cg.hash_hslk, HSK.COMMON, HSK.SKILL_INVISIBLE)
--skill_hero_tavern_selection
hslk_global.skill_hero_tavern_selection = cj.LoadInteger(cg.hash_hslk, HSK.COMMON, HSK.SKILL_HERO_TAVERN_SELECTION)
--unit_token
hslk_global.unit_token = cj.LoadInteger(cg.hash_hslk, HSK.COMMON, HSK.UNIT_TOKEN)
--unit_token_leap
hslk_global.unit_token_leap = cj.LoadInteger(cg.hash_hslk, HSK.COMMON, HSK.UNIT_TOKEN_LEAP)
--unit_tree
hslk_global.unit_tree = cj.LoadInteger(cg.hash_hslk, HSK.COMMON, HSK.UNIT_TREE)
--unit_hero_tavern
hslk_global.unit_hero_tavern = cj.LoadInteger(cg.hash_hslk, HSK.COMMON, HSK.UNIT_HERO_TAVERN)
--unit_hero_tavern_token
hslk_global.unit_hero_tavern_token = cj.LoadInteger(cg.hash_hslk, HSK.COMMON, HSK.UNIT_HERO_TAVERN_TOKEN)
--unit_hero_death_token
hslk_global.unit_hero_death_token = cj.LoadInteger(cg.hash_hslk, HSK.COMMON, HSK.UNIT_HERO_DEATH_TOKEN)
--地图等级奖励
local qty = cj.LoadInteger(cg.hash_hslk, HSK.PLAYER_MAP_LEVEL_AWARD, -1)
for i = 1, qty do
    table.insert(hslk_global.dzapi_map_level_award, cj.LoadInteger(cg.hash_hslk, HSK.PLAYER_MAP_LEVEL_AWARD, i))
end
--瞬逝物系统
qty = cj.LoadInteger(cg.hash_hslk, HSK.ITEM_MOMENT, -1)
for i = 1, qty do
    table.insert(hslk_global.item_moment, cj.LoadInteger(cg.hash_hslk, HSK.ITEM_MOMENT, i))
end
--环境系统
qty = cj.LoadInteger(cg.hash_hslk, HSK.COMMON, HSK.ENV_MODEL)
for i = 1, qty do
    local key = cj.LoadStr(cg.hash_hslk, HSK.ENV_MODEL_NAME, i)
    local val = cj.LoadInteger(cg.hash_hslk, HSK.ENV_MODEL, i)
    hslk_global.env_model[key] = val
end
--属性系统
for i = 1, 9 do
    local val = math.floor(10 ^ (i - 1))
    hslk_global.attr.str_green.add[val] = cj.LoadInteger(cg.hash_hslk, HSK.ATTR_STR_GREEN_ADD, val)
    hslk_global.attr.str_green.sub[val] = cj.LoadInteger(cg.hash_hslk, HSK.ATTR_STR_GREEN_SUB, val)
    hslk_global.attr.agi_green.add[val] = cj.LoadInteger(cg.hash_hslk, HSK.ATTR_AGI_GREEN_ADD, val)
    hslk_global.attr.agi_green.sub[val] = cj.LoadInteger(cg.hash_hslk, HSK.ATTR_AGI_GREEN_SUB, val)
    hslk_global.attr.int_green.add[val] = cj.LoadInteger(cg.hash_hslk, HSK.ATTR_INT_GREEN_ADD, val)
    hslk_global.attr.int_green.sub[val] = cj.LoadInteger(cg.hash_hslk, HSK.ATTR_INT_GREEN_SUB, val)
    hslk_global.attr.attack_green.add[val] = cj.LoadInteger(cg.hash_hslk, HSK.ATTR_ATTACK_GREEN_ADD, val)
    hslk_global.attr.attack_green.sub[val] = cj.LoadInteger(cg.hash_hslk, HSK.ATTR_ATTACK_GREEN_SUB, val)
    hslk_global.attr.attack_white.add[val] = cj.LoadInteger(cg.hash_hslk, HSK.ATTR_ATTACK_WHITE_ADD, val)
    hslk_global.attr.attack_white.sub[val] = cj.LoadInteger(cg.hash_hslk, HSK.ATTR_ATTACK_WHITE_SUB, val)
    hslk_global.attr.item_attack_white.add[val] = cj.LoadInteger(cg.hash_hslk, HSK.ATTR_ITEM_ATTACK_WHITE_ADD, val)
    hslk_global.attr.item_attack_white.sub[val] = cj.LoadInteger(cg.hash_hslk, HSK.ATTR_ITEM_ATTACK_WHITE_SUB, val)
    hslk_global.attr.attack_speed.add[val] = cj.LoadInteger(cg.hash_hslk, HSK.ATTR_ATTACK_SPEED_ADD, val)
    hslk_global.attr.attack_speed.sub[val] = cj.LoadInteger(cg.hash_hslk, HSK.ATTR_ATTACK_SPEED_SUB, val)
    hslk_global.attr.defend.add[val] = cj.LoadInteger(cg.hash_hslk, HSK.ATTR_DEFEND_ADD, val)
    hslk_global.attr.defend.sub[val] = cj.LoadInteger(cg.hash_hslk, HSK.ATTR_DEFEND_SUB, val)
    hslk_global.attr.life.add[val] = cj.LoadInteger(cg.hash_hslk, HSK.ATTR_LIFE_ADD, val)
    hslk_global.attr.life.sub[val] = cj.LoadInteger(cg.hash_hslk, HSK.ATTR_LIFE_SUB, val)
    hslk_global.attr.mana.add[val] = cj.LoadInteger(cg.hash_hslk, HSK.ATTR_MANA_ADD, val)
    hslk_global.attr.mana.sub[val] = cj.LoadInteger(cg.hash_hslk, HSK.ATTR_MANA_SUB, val)
end
--属性系统 回避
hslk_global.attr.avoid.add = cj.LoadInteger(cg.hash_hslk, HSK.ATTR_AVOID_ADD, 0)
hslk_global.attr.avoid.sub = cj.LoadInteger(cg.hash_hslk, HSK.ATTR_AVOID_SUB, 0)
--属性系统 视野
local sightBase = {1, 2, 3, 4, 5}
local si = 1
while (si <= 10000) do
    for k, v in ipairs(sightBase) do
        v = math.floor(v * si)
        table.insert(hslk_global.attr.sightTotal, v)
        hslk_global.attr.sight.add[v] = cj.LoadInteger(cg.hash_hslk, HSK.ATTR_SIGHT_ADD, v)
        hslk_global.attr.sight.sub[v] = cj.LoadInteger(cg.hash_hslk, HSK.ATTR_SIGHT_SUB, v)
    end
    si = si * 10
end
table.sort(
    hslk_global.attr.sightTotal,
    function(a, b)
        return a > b
    end
)
--变身(仅作演示)
local toUnitId = cj.LoadInteger(cg.hash_hslk, HSK.EX_SHAPESHIFT, 1)
local toAbilityId = cj.LoadInteger(cg.hash_hslk, HSK.EX_SHAPESHIFT, 2)
local backAbilityId = cj.LoadInteger(cg.hash_hslk, HSK.EX_SHAPESHIFT, 3)
hslk_global.skill_shapeshift[toUnitId] = {
    toAbilityId = toAbilityId,
    backAbilityId = backAbilityId
}
cj.FlushParentHashtable(cg.hash_hslk)
hdzapi = {
    enable = false,
    commandHashCache = {},
    commandHash = function(command)
        if (hdzapi.commandHashCache[command] == nil) then
            hdzapi.commandHashCache[command] = cj.StringHash(command)
        end
        return hdzapi.commandHashCache[command]
    end,
    exec = function(command, ...)
        if (hdzapi.enable ~= true) then
            print_err("Please copy ./plugin/dzapi.jass")
            return
        end
        local whichPlayer = select("1", ...)
        local key = select("2", ...)
        local data = select("3", ...)
        if (whichPlayer == nil) then
            return
        end
        if (his.playing(whichPlayer) == false) then
            return false
        end
        cj.SavePlayerHandle(cg.hash_hlua_dzapi, hdzapi.commandHash(command), cg.HLDK_PLAYER, whichPlayer)
        if (key ~= nil) then
            cj.SaveStr(cg.hash_hlua_dzapi, hdzapi.commandHash(command), cg.HLDK_KEY, key)
        end
        if (data ~= nil) then
            cj.SaveStr(cg.hash_hlua_dzapi, hdzapi.commandHash(command), cg.HLDK_DATA, data)
        end
        cj.ExecuteFunc(command)
        local res = cj.LoadStr(cg.hash_hlua_dzapi, hdzapi.commandHash(command), cg.HLDK_RESULT)
        if (type(res) == "string") then
            return res
        end
    end
}
hdzapi.init = function()
    hdzapi.enable = true
end
hdzapi.isVipRed = function(whichPlayer)
    return hdzapi.exec("Hlua_DzAPI_Map_IsRedVIP", whichPlayer) == "1"
end
hdzapi.isVipBlue = function(whichPlayer)
    return hdzapi.exec("Hlua_DzAPI_Map_IsBlueVIP", whichPlayer) == "1"
end
hdzapi.mapLv = function(whichPlayer)
    local lv = hdzapi.exec("Hlua_DzAPI_Map_GetMapLevel", whichPlayer)
    if (lv == nil or lv == "") then
        lv = 1
    else
        lv = math.floor(lv)
    end
    if (lv < 1) then
        lv = 1
    end
    return lv
end
hdzapi.hasMallItem = function(whichPlayer, key)
    key = string.upper(key)
    return hdzapi.exec("Hlua_DzAPI_Map_HasMallItem", whichPlayer, key) == "1"
end
hdzapi.server = {}
hdzapi.server.ready = function(whichPlayer)
    return hdzapi.exec("Hlua_DzAPI_GetPlayerServerValueSuccess", whichPlayer) == "1"
end
hdzapi.setRoomStat = function(whichPlayer, key, text)
    if (hdzapi.server.ready(whichPlayer) == true) then
        hdzapi.exec("Hlua_DzAPI_Map_Stat_SetStat", whichPlayer, tostring(key), tostring(text))
    end
end
hdzapi.server.save = function(whichPlayer, key, data)
    if (data == nil) then
        return
    end
    if (hdzapi.server.ready(whichPlayer) == true) then
        hdzapi.exec("Hlua_DzAPI_Map_SaveServerValue", whichPlayer, key, tostring(data))
    end
end
hdzapi.server.load = function(whichPlayer, key)
    if (hdzapi.server.ready(whichPlayer) == true) then
        return hdzapi.exec("Hlua_DzAPI_Map_GetServerValue", whichPlayer, key)
    end
end
hdzapi.server.clear = function(whichPlayer, key)
    if (hdzapi.server.ready(whichPlayer) == true) then
        hdzapi.exec("Hlua_DzAPI_Map_SaveServerValue", whichPlayer, key, "")
    end
end
hdzapi.server.set = {
    int = function(whichPlayer, key, data)
        hdzapi.server.save(whichPlayer, "I" .. key, data or 0)
    end,
    real = function(whichPlayer, key, data)
        hdzapi.server.save(whichPlayer, "R" .. key, data or 0)
    end,
    bool = function(whichPlayer, key, data)
        local b = "0"
        if (data == true) then
            b = "1"
        end
        hdzapi.server.save(whichPlayer, "B" .. key, b)
    end,
    str = function(whichPlayer, key, data)
        hdzapi.server.save(whichPlayer, "S" .. key, data)
    end,
    unit = function(whichPlayer, key, data)
        hdzapi.server.save(whichPlayer, "S" .. key, hunit.getId(data))
    end,
    item = function(whichPlayer, key, data)
        hdzapi.server.save(whichPlayer, "S" .. key, hitem.getId(data))
    end
}
hdzapi.server.get = {
    int = function(whichPlayer, key)
        local val = hdzapi.server.load(whichPlayer, "I" .. key) or 0
        if (val == "") then
            val = 0
        end
        return math.floor(val)
    end,
    real = function(whichPlayer, key)
        local val = hdzapi.server.load(whichPlayer, "R" .. key) or 0
        if (val == "") then
            val = 0
        end
        return math.round(val)
    end,
    bool = function(whichPlayer, key)
        local b = hdzapi.server.load(whichPlayer, "B" .. key)
        if (b == "1") then
            return true
        end
        return false
    end,
    str = function(whichPlayer, key)
        return hdzapi.server.load(whichPlayer, "S" .. key) or ""
    end,
    unit = function(whichPlayer, key)
        local id = hdzapi.server.load(whichPlayer, "S" .. key) or ""
        if (string.len(id) > 0) then
            return string.char2id(id)
        end
        return nil
    end,
    item = function(whichPlayer, key)
        local id = hdzapi.server.load(whichPlayer, "S" .. key) or ""
        if (string.len(id) > 0) then
            return string.char2id(id)
        end
        return nil
    end
}
--别称
hmsg = hmessage
httg = htextTag
hattribute = hattr
cj.TimerStart(cj.CreateTimer(), 1.00, true, htime.clock)
local u = cj.CreateUnit(hplayer.player_passive, hslk_global.unit_token, 0, 0, 0)
hattr.regAllAbility(u)
hunit.del(u)
hplayer.init()
hitem.init()
hunit.init()
--DzApi
if (cg.HLUA_DZAPI_FLAG == true) then
    hdzapi.init()
end
--加载本地图的global
game = {
    ALLY_PLAYER = nil,
    TRIGGER_DE_POINT = nil,
    bigElfTips = {
        "给点力撒~",
        "哎哟好痛~",
        "痛阿痛~",
        "守住呀~",
        "咋回事~",
        "奥力给~",
        "噢不~",
        "又失守了~",
        "不敢相信~"
    },
    enemyTips = {
        "大力点~",
        "不痛~",
        "嘿嘿没死~",
        "大难不死",
        "我浪故我在~",
        "我走啦~",
        "奥力给~",
        "噢不~",
        "我逃~",
        "我逃走~",
        "逃走~",
        "老是打我~",
        "lucky~",
        "飞毛腿~",
        "留得青山在...",
        "求心理阴影...",
        "加速~",
        "加速加速~",
        "可以可以~",
        "习惯就好~",
        "不痛不痒~",
        "WTF~"
    },
    runing = true,
    rule = {
        yb = {
            perWaveQty = 18,
            wave = 1,
            waveEnd = 100,
            fresh = 1.2,
            waitTime = 7,
            mon = nil,
            monLife = 60,
            monLifeInc = 11
        },
        hz = {
            perWaveQty = 16,
            wave = 1,
            fresh = 0.9,
            waitTime = 6,
            mon = nil,
            monLife = 65,
            monLifeInc = 11
        },
        dk = {
            perWaveQty = 10,
            playerQty = {},
            wave = {},
            fresh = 1.5,
            mon = {},
            monLimit = {},
            monData = {},
            ai = false,
            shadowMod = {
                5,
                5,
                5,
                5
            },
            monLife = {
                30,
                30,
                30,
                30
            }
        },
        cur = "yb"
    },
    currentMon = 0,
    playerOriginLumber = {},
    playerTower = {},
    playerTowerLink = {},
    playerTowerLevel = {},
    playerTowerEffectModel = {},
    playerCourier = {},
    towersLen = 0,
    towers = {},
    towersShadow = {},
    towersItems = {},
    towersItemsKV = {},
    towersAbilities = {},
    towersSummon = {},
    towersOriginSkill = {},
    thisUnits = {},
    thisEnemys = {},
    thisEnemysLen = 0,
    thisEnemysBoss = {},
    thisEnemysBossLen = 0,
    thisEnemysAward = {},
    thisEnemysAwardLen = 0,
    shops = {},
    courierLen = 0,
    courier = {},
    courierItem = {},
    effectModel = {},
    effectModelItem = {},
    thisUnitPowerAbilities = {},
    thisUnitPowerAbilitiesLen = 0,
    thisUnitLevelAbilities = {},
    thisUnitLevelAbilitiesLen = 0,
    thisUnitRaceAbilities = {},
    thisUnitRaceAbilitiesLen = 0,
    thisEmptyLink = {},
    thisEmptyAbilities = {},
    thisEmptyAbilitiesLen = 0,
    thisOptionAbility = {},
    thisOptionAbilityItem = {},
    thisOptionItem2Abli = {},
    thisOptionTowerPowerItem = {},
    thisEquipItem = {},
    thisComboItem = {},
    
    towerPoint = {
        {-1536, 1536},
        {1536, 1536},
        {1536, -1536},
        {-1536, -1536}
    },
    towerLinkOffset = {
        {-192, -192},
        {-192, 192},
        {192, 192},
        {192, -192}
    },
    courierPoint = {
        {-1280, 1280},
        {1280, 1280},
        {1280, -1280},
        {-1280, -1280}
    },
    pathPoint = {
        {{-1408, 256}, {-1408, 1024}, {-2048, 1024}, {-2048, 2048}, {-1024, 2048}, {-1024, 1408}, {-256, 1408}},
        {{256, 1408}, {1024, 1408}, {1024, 2048}, {2048, 2048}, {2048, 1024}, {1408, 1024}, {1408, 128}},
        {{1408, -384}, {1408, -1024}, {2048, -1024}, {2048, -2048}, {1024, -2048}, {1024, -1408}, {256, -1408}},
        {{-256, -1408}, {-1024, -1408}, {-1024, -2048}, {-2048, -2048}, {-2048, -1024}, {-1408, -1024}, {-1408, -256}}
    },
    shopsConfig = {
        {"稀奇古怪黑科技", {-1088, 1088}},
        {"稀奇古怪黑科技", {1088, 1088}},
        {"稀奇古怪黑科技", {1088, -1088}},
        {"稀奇古怪黑科技", {-1088, -1088}},
        {"神秘之地", {0, -512}},
        {"信使之笼", {0, 512}},
        {"冷兵器磨坊", {-512, 512}},
        {"火器铁铺", {-512, 0}},
        {"科技车间", {-512, -512}},
        {"奇异屋", {512, 512}},
        {"铁箱子", {512, 0}},
        {"营地", {512, -512}}
    }
}
--加载本地图的SLK系统
--SLK系统
game.towersLen = cj.LoadInteger(cg.hash_myslk, cj.StringHash("towers"), -1)
for i = 1, game.towersLen, 1 do
    --tower
    local v = cj.LoadStr(cg.hash_myslk, cj.StringHash("towers"), i)
    local jv = json.parse(v)
    game.towers[jv.INDEX] = jv
    hRuntime.register.unit(jv)
    --item
    v = cj.LoadStr(cg.hash_myslk, cj.StringHash("towersItems"), i)
    jv = json.parse(v)
    jv.I_TYPE = "tower"
    hRuntime.register.item(jv)
    game.towersItems[jv.INDEX] = jv
    if (game.thisOptionTowerPowerItem[jv.TOWER_POWER] == nil) then
        game.thisOptionTowerPowerItem[jv.TOWER_POWER] = {}
    end
    table.insert(game.thisOptionTowerPowerItem[jv.TOWER_POWER], jv)
    --shadow
    v = cj.LoadStr(cg.hash_myslk, cj.StringHash("towers_shadow"), i)
    jv = json.parse(v)
    game.towersShadow[jv.TOWER_ID] = jv
    hRuntime.register.unit(jv)
end
--tower abli
local len = cj.LoadInteger(cg.hash_myslk, cj.StringHash("tower_spx_ab"), -1)
for i = 1, len, 1 do
    local v = cj.LoadStr(cg.hash_myslk, cj.StringHash("tower_spx_ab"), i)
    local jv = json.parse(v)
    hRuntime.register.ability(jv)
    table.insert(game.towersOriginSkill, jv)
end
--tower summon
local len = cj.LoadInteger(cg.hash_myslk, cj.StringHash("tower_summon"), -1)
for i = 1, len, 1 do
    local v = cj.LoadStr(cg.hash_myslk, cj.StringHash("tower_summon"), i)
    local jv = json.parse(v)
    game.towersSummon[jv.Name] = jv
    hRuntime.register.unit(jv)
end
--shop
local len = cj.LoadInteger(cg.hash_myslk, cj.StringHash("shops"), -1)
for i = 1, len, 1 do
    local v = cj.LoadStr(cg.hash_myslk, cj.StringHash("shops"), i)
    local jv = json.parse(v)
    hRuntime.register.unit(jv)
    game.shops[jv.Name] = jv
end
game.courierLen = cj.LoadInteger(cg.hash_myslk, cj.StringHash("couriers"), -1)
for i = 1, game.courierLen, 1 do
    local v = cj.LoadStr(cg.hash_myslk, cj.StringHash("couriers"), i)
    local jv = json.parse(v)
    hRuntime.register.unit(jv)
    game.courier[jv.INDEX] = jv
    --
    v = cj.LoadStr(cg.hash_myslk, cj.StringHash("couriersItems"), i)
    jv = json.parse(v)
    jv.I_TYPE = "courier"
    hRuntime.register.item(jv)
    game.courierItem[jv.INDEX] = jv
end
--信使技能
local len = cj.LoadInteger(cg.hash_myslk, cj.StringHash("couriers_ab"), -1)
for i = 1, len, 1 do
    local v = cj.LoadStr(cg.hash_myslk, cj.StringHash("couriers_ab"), i)
    local jv = json.parse(v)
    hRuntime.register.ability(jv)
end
--特效s
local len = cj.LoadInteger(cg.hash_myslk, cj.StringHash("tower_shadow_effect"), -1)
for i = 1, len, 1 do
    local v = cj.LoadStr(cg.hash_myslk, cj.StringHash("tower_shadow_effect"), i)
    local jv = json.parse(v)
    hRuntime.register.ability(jv)
    game.effectModel[jv.INDEX] = jv
end
len = cj.LoadInteger(cg.hash_myslk, cj.StringHash("tower_shadow_effect_item"), -1)
for i = 1, len, 1 do
    local v = cj.LoadStr(cg.hash_myslk, cj.StringHash("tower_shadow_effect_item"), i)
    local jv = json.parse(v)
    jv.I_TYPE = "effect_model"
    hRuntime.register.item(jv)
    game.effectModelItem[jv.INDEX] = jv
end
local thisUnitNames = {
    "大精灵",
    "河草",
    "光辉城主",
    "空位"
}
for _, name in ipairs(thisUnitNames) do
    local v = cj.LoadStr(cg.hash_myslk, cj.StringHash("thisunit"), cj.StringHash(name))
    local jv = json.parse(v)
    hRuntime.register.unit(jv)
    game.thisUnits[name] = jv
end
game.thisEnemysLen = cj.LoadInteger(cg.hash_myslk, cj.StringHash("thisenemys"), -1)
for k = 1, game.thisEnemysLen, 1 do
    local v = cj.LoadStr(cg.hash_myslk, cj.StringHash("thisenemys"), k)
    local jv = json.parse(v)
    hRuntime.register.unit(jv)
    game.thisEnemys[k] = jv
end
game.thisEnemysBossLen = cj.LoadInteger(cg.hash_myslk, cj.StringHash("thisenemysboss"), -1)
for k = 1, game.thisEnemysBossLen, 1 do
    local v = cj.LoadStr(cg.hash_myslk, cj.StringHash("thisenemysboss"), k)
    local jv = json.parse(v)
    hRuntime.register.unit(jv)
    game.thisEnemysBoss[k] = jv
end
game.thisEnemysAwardLen = cj.LoadInteger(cg.hash_myslk, cj.StringHash("thisenemysaward"), -1)
for k = 1, game.thisEnemysAwardLen, 1 do
    local v = cj.LoadStr(cg.hash_myslk, cj.StringHash("thisenemysaward"), k)
    local jv = json.parse(v)
    hRuntime.register.unit(jv)
    game.thisEnemysAward[k] = jv
end
game.thisUnitLevelAbilitiesLen = 9
for i = 0, game.thisUnitLevelAbilitiesLen, 1 do
    local v = cj.LoadStr(cg.hash_myslk, cj.StringHash("abilities_unit_level"), i)
    local jv = json.parse(v)
    hRuntime.register.ability(jv)
    game.thisUnitLevelAbilities[i] = jv
end
game.thisUnitRaceAbilitiesLen = cj.LoadInteger(cg.hash_myslk, cj.StringHash("abilities_unit_race"), -1)
for i = 1, game.thisUnitRaceAbilitiesLen, 1 do
    local v = cj.LoadStr(cg.hash_myslk, cj.StringHash("abilities_unit_race"), i)
    local jv = json.parse(v)
    hRuntime.register.ability(jv)
    game.thisUnitRaceAbilities[jv.INDEX] = jv
end
local thisEmptyAbilitiesName = {
    "S",
    "D",
    "F",
    "X",
    "C",
    "V"
}
game.thisEmptyAbilitiesLen = #thisEmptyAbilitiesName
for _, name in ipairs(thisEmptyAbilitiesName) do
    local v = cj.LoadStr(cg.hash_myslk, cj.StringHash("abilities_empty"), cj.StringHash(name))
    local jv = json.parse(v)
    hRuntime.register.ability(jv)
    game.thisEmptyAbilities[name] = jv
end
--link技能
local len = cj.LoadInteger(cg.hash_myslk, cj.StringHash("link_ability"), -1)
for i = 1, len, 1 do
    local v = cj.LoadStr(cg.hash_myslk, cj.StringHash("link_ability"), i)
    local jv = json.parse(v)
    hRuntime.register.ability(jv)
end
local abilitiesQty = cj.LoadInteger(cg.hash_myslk, cj.StringHash("abilities_qty"), 0)
local abilitiesItemQty = cj.LoadInteger(cg.hash_myslk, cj.StringHash("abilities_item_qty"), 0)
for i = 1, abilitiesQty, 1 do
    local v = cj.LoadStr(cg.hash_myslk, cj.StringHash("abilities"), i)
    local jv = json.parse(v)
    hRuntime.register.ability(jv)
    if (game.thisOptionAbility[jv.INDEX] == nil) then
        game.thisOptionAbility[jv.INDEX] = {}
    end
    game.thisOptionAbility[jv.INDEX][jv.ABILITY_BTN] = jv
end
for i = 1, abilitiesItemQty, 1 do
    local v = cj.LoadStr(cg.hash_myslk, cj.StringHash("abilitiesItems"), i)
    local jv = json.parse(v)
    jv.I_TYPE = "ability"
    hRuntime.register.item(jv)
    if (game.thisOptionAbilityItem[jv.ABILITY_COLOR] == nil) then
        game.thisOptionAbilityItem[jv.ABILITY_COLOR] = {}
    end
    if (game.thisOptionAbilityItem[jv.ABILITY_COLOR][jv.ABILITY_LEVEL] == nil) then
        game.thisOptionAbilityItem[jv.ABILITY_COLOR][jv.ABILITY_LEVEL] = {}
    end
    table.insert(game.thisOptionAbilityItem[jv.ABILITY_COLOR][jv.ABILITY_LEVEL], jv)
end
--物品
local itemQty = cj.LoadInteger(cg.hash_myslk, cj.StringHash("items"), -1)
for i = 1, itemQty, 1 do
    local v = cj.LoadStr(cg.hash_myslk, cj.StringHash("items"), i)
    local jv = json.parse(v)
    hRuntime.register.item(jv)
    if (jv.I_TYPE == "combo") then
        if (game.thisComboItem[jv.LEVEL] == nil) then
            game.thisComboItem[jv.LEVEL] = {}
        end
        table.insert(game.thisComboItem[jv.LEVEL], jv)
    elseif (jv.I_TYPE == "equip") then
        if (game.thisEquipItem[jv.LEVEL] == nil) then
            game.thisEquipItem[jv.LEVEL] = {}
        end
        table.insert(game.thisEquipItem[jv.LEVEL], jv)
    end
end
--战败小兵
game.couriers_defeat = cj.LoadInteger(cg.hash_myslk, cj.StringHash("couriers_defeat"), 0)
--
cj.FlushParentHashtable(cg.hash_myslk)
--加载本地图的test
--预读 preread（为了有效您需要注意hRuntime.register.ability的初始化 abilitiesKV）
local u = cj.CreateUnit(hplayer.player_passive, hslk_global.unit_token, 0, 0, 0)
for id, _ in pairs(hslk_global.abilitiesKV) do
    cj.UnitAddAbility(u, id)
    cj.UnitRemoveAbility(u, id)
end
hunit.del(u)
hcamera.setModel("normal")
hplayer.qty_max = 4 
hplayer.convert_ratio = 100 
game.ALLY_PLAYER = hplayer.players[12]
henemy.setName("拆塔小能手")
henemy.setColor(cj.ConvertPlayerColor(12)) 
henemy.setPlayer(hplayer.players[5])
henemy.setPlayer(hplayer.players[6])
henemy.setPlayer(hplayer.players[7])
henemy.setPlayer(hplayer.players[8])
henemy.setPlayer(hplayer.players[9])
henemy.setPlayer(hplayer.players[10])
henemy.setPlayer(hplayer.players[11])
cj.SetPlayerColor(hplayer.players[2], CONST_PLAYER_COLOR.YELLOW)
cj.SetPlayerColor(hplayer.players[4], CONST_PLAYER_COLOR.GREEN)
hquest.create(
    {
        title = "群1040851943",
        content = "有什么建议或者bug都可以来群反馈！",
        icon = "ReplaceableTextures\\CommandButtons\\BTNPenguin.blp"
    }
)
hquest.create(
    {
        title = "我塔非凡极速入门",
        content = {
            " - 打怪捡石头，换塔学技能书",
            " - 设置4座辅助塔，可以帮助主塔攻防",
            " - 5个兵塔可以组成种族联动，实现更强的能力",
            " - 天赋9级最高，越高基础能力越强，但升级能力不会变",
            " - 对战模式有AI，尽管去玩！一样有奖励"
        },
        icon = "ReplaceableTextures\\CommandButtons\\BTNTomeRed.blp"
    }
)
hquest.create(
    {
        title = "木头哪里来?",
        content = {
            " - 木头是免费的，不需要充钱，良心作者的我",
            " - 每一局结束，下一局都可以获得当前通关等级的木头数（任何模式）",
            " - “对战”模式胜者额外得到100木！(AI模式也可以有哦~)",
            " - 地图等级也可以在下一局获得木头，例如你5级，下一局获得的木头会+5",
            " - 如果你此局的木头不使用，会全部留存到下一局",
            " - 木头使用就是永久消失哦~"
        },
        icon = "ReplaceableTextures\\CommandButtons\\BTNBundleOfLumber.blp"
    }
)
hquest.create(
    {
        title = "对战AI的能力",
        content = {
            " - 极速捡东西",
            " - 智能判断兵塔石能力替换塔位",
            " - 自动学技能",
            " - 信使会抽兵塔石和刷天赋",
            " - 最终的最终只会同种族战略",
            " - 禁止抽书"
        },
        icon = "ReplaceableTextures\\CommandButtons\\BTNGlyph.blp"
    }
)
hquest.create(
    {
        title = "隐藏攻略！",
        content = {
            " - 兵塔石除了可以换塔还可以吃掉升级",
            " - 天赋抽到9之后，同一个塔不会洗掉",
            " - 有些技能只有对战有用，注意看物品说明",
            " - 种族的“队伍”效果根据情况你的能力会延时生效",
            " - 辅助塔的天赋比主塔好用"
        },
        icon = "ReplaceableTextures\\CommandButtons\\BTNTomeBrown.blp"
    }
)
for _, sp in ipairs(game.shopsConfig) do
    hunit.create(
        {
            register = false,
            whichPlayer = game.ALLY_PLAYER,
            unitId = game.shops[sp[1]].UNIT_ID,
            qty = 1,
            x = sp[2][1],
            y = sp[2][2]
        }
    )
end
--加载本地图的test
getBookPowLevel = function(curWave)
    curWave = curWave or 1
    local bpow = {1, 0, 0, 0}
    if (curWave <= 9) then
        bpow = {1, 0, 0, 0}
    elseif (curWave <= 15) then
        bpow = {5, 1, 0, 0}
    elseif (curWave <= 27) then
        bpow = {10, 6, 1, 0}
    elseif (curWave <= 45) then
        bpow = {5, 10, 1, 0}
    elseif (curWave <= 75) then
        bpow = {3, 10, 2, 0}
    elseif (curWave <= 130) then
        bpow = {0, 8, 1, 0}
    elseif (curWave <= 175) then
        bpow = {0, 10, 5, 1}
    else
        bpow = {0, 0, 7, 1}
    end
    local tarBPows = {}
    for k, v in ipairs(bpow) do
        if (v > 0) then
            for i = 1, v, 1 do
                table.insert(tarBPows, k)
            end
        end
    end
    return tarBPows[math.random(1, #tarBPows)]
end
getTowerPowLevel = function(curWave)
    curWave = curWave or 1
    local tpow = {E = 1}
    if (curWave <= 3) then
        tpow = {E = 1}
    elseif (curWave <= 7) then
        tpow = {E = 7, D = 3}
    elseif (curWave <= 18) then
        tpow = {E = 4, D = 6, C = 1}
    elseif (curWave <= 26) then
        tpow = {E = 3, D = 6, C = 2, B = 1}
    elseif (curWave <= 41) then
        tpow = {D = 4, C = 6, B = 1}
    elseif (curWave <= 60) then
        tpow = {D = 6, C = 16, B = 4, A = 1}
    elseif (curWave <= 75) then
        tpow = {C = 10, B = 10, A = 1}
    elseif (curWave <= 85) then
        tpow = {C = 8, B = 27, A = 3}
    elseif (curWave <= 95) then
        tpow = {B = 25, A = 15, S = 1}
    elseif (curWave <= 110) then
        tpow = {B = 10, A = 25, S = 1}
    elseif (curWave <= 150) then
        tpow = {A = 30, S = 20, SS = 5}
    elseif (curWave <= 200) then
        tpow = {A = 5, S = 35, SS = 5, SSS = 1}
    else
        tpow = {S = 20, SS = 5, SSS = 1}
    end
    local targetTPows = {}
    for k, v in pairs(tpow) do
        for i = 1, v, 1 do
            table.insert(targetTPows, k)
        end
    end
    return targetTPows[math.random(1, #targetTPows)]
end
setTowerSkillByBook = function(u, abliOps, opt)
    local optChar = "add"
    if (opt == "-") then
        optChar = "sub"
    end
    local level = (abliOps.ABILITY_LEVEL or 1) * 2 - 1
    if (abliOps.Name == "战斗传统" or abliOps.Name == "战争武斗" or abliOps.Name == "武术至尊") then
        hattr.set(u, 0, {attack_green = opt .. (level * abliOps.Val[1])})
    elseif (abliOps.Name == "智勇双全") then
        hattr.set(u, 0, {attack_green = opt .. (level * abliOps.Val[1])})
        hattr.set(u, 0, {attack_speed = opt .. (level * abliOps.Val[2])})
    elseif (abliOps.Name == "心灵之火") then
        hattr.set(u, 0, {attack_speed = opt .. (level * abliOps.Val[1])})
    elseif (abliOps.Name == "鬼神头盔" or abliOps.Name == "擎天之柱" or abliOps.Name == "牛鬼蛇神") then
        hattr.set(u, 0, {str_green = opt .. level * abliOps.Val[1]})
    elseif (abliOps.Name == "猎豹一族" or abliOps.Name == "荒芜" or abliOps.Name == "荒诞") then
        hattr.set(u, 0, {agi_green = opt .. level * abliOps.Val[1]})
    elseif (abliOps.Name == "魔法杖" or abliOps.Name == "甜甜圈法杖" or abliOps.Name == "天师法剑") then
        hattr.set(u, 0, {int_green = opt .. level * abliOps.Val[1]})
    elseif (abliOps.Name == "勇气勋章") then
        hattr.set(
            u,
            0,
            {
                str_green = opt .. level * abliOps.Val[1],
                agi_green = opt .. level * abliOps.Val[1],
                int_green = opt .. level * abliOps.Val[1]
            }
        )
    elseif (abliOps.Name == "致命一击" or abliOps.Name == "战熊咆哮" or abliOps.Name == "暗杀巅峰") then
        hattr.set(
            u,
            0,
            {
                attack_effect = {
                    [optChar] = {
                        {
                            attr = "knocking",
                            odds = level * abliOps.Val[1],
                            percent = level * abliOps.Val[2]
                        }
                    }
                }
            }
        )
    elseif (abliOps.Name == "魔法回应" or abliOps.Name == "魔导灵眼" or abliOps.Name == "法术天尊") then
        hattr.set(
            u,
            0,
            {
                attack_effect = {
                    [optChar] = {
                        {
                            attr = "violence",
                            odds = level * abliOps.Val[1],
                            percent = level * abliOps.Val[2]
                        }
                    }
                }
            }
        )
    elseif (abliOps.Name == "瞄准") then
        hattr.set(
            u,
            0,
            {
                aim = opt .. (level * abliOps.Val[1]),
                attack_effect = {
                    [optChar] = {
                        {
                            attr = "knocking",
                            odds = level * abliOps.Val[2],
                            percent = level * abliOps.Val[3]
                        }
                    }
                }
            }
        )
    elseif (abliOps.Name == "分裂攻击") then
        hattr.set(
            u,
            0,
            {
                attack_effect = {
                    [optChar] = {
                        {
                            attr = "split",
                            range = 500,
                            odds = 100,
                            percent = level * abliOps.Val[1]
                        }
                    }
                }
            }
        )
    elseif (abliOps.Name == "星辰攻击") then
        hattr.set(
            u,
            0,
            {
                attack_effect = {
                    [optChar] = {
                        {
                            attr = "swim",
                            odds = level * abliOps.Val[1],
                            val = 0,
                            during = 0.5
                        }
                    }
                }
            }
        )
    elseif (abliOps.Name == "剧毒标枪") then
        hattr.set(
            u,
            0,
            {
                attack_debuff = {
                    [optChar] = {
                        {
                            attr = "life_back",
                            odds = 100,
                            val = level * abliOps.Val[1],
                            during = 4,
                            effect = "Abilities\\Spells\\Items\\OrbVenom\\OrbVenomSpecialArt.mdl"
                        }
                    }
                }
            }
        )
    elseif (abliOps.Name == "切割刀刃") then
        hattr.set(
            u,
            0,
            {
                attack_debuff = {
                    [optChar] = {
                        {
                            attr = "life_back",
                            odds = 100,
                            val = level * abliOps.Val[1],
                            during = 4.5,
                            effect = "Objects\\Spawnmodels\\Human\\HumanBlood\\BloodElfSpellThiefBlood.mdl"
                        }
                    }
                }
            }
        )
    elseif (abliOps.Name == "一发长枪" or abliOps.Name == "打靶") then
        hattr.set(u, 0, {aim = opt .. level * abliOps.Val[1]})
    elseif (abliOps.Name == "致命抵抗") then
        hattr.set(
            u,
            0,
            {
                knocking_oppose = opt .. level * abliOps.Val[1],
                violence_oppose = opt .. level * abliOps.Val[1]
            }
        )
    elseif (abliOps.Name == "反伤抵抗") then
        hattr.set(u, 0, {damage_rebound_oppose = opt .. level * abliOps.Val[1]})
    elseif (abliOps.Name == "专注护身") then
        hattr.set(u, 0, {defend = opt .. level * abliOps.Val[1]})
    elseif (abliOps.Name == "噩梦移植") then
        hattr.set(u, 0, {life = opt .. level * abliOps.Val[1]})
    elseif (abliOps.Name == "雷电之锤") then
        hattr.set(
            u,
            0,
            {
                attack_effect = {
                    [optChar] = {
                        {
                            attr = "lightning_chain",
                            odds = 30,
                            qty = 3,
                            range = 600,
                            val = level * abliOps.Val[1],
                            change = -0.25,
                            effect = "Abilities\\Weapons\\Bolt\\BoltImpact.mdl"
                        }
                    }
                }
            }
        )
    end
    if (abliOps.Name == "穿透之箭") then
        hattr.set(
            u,
            0,
            {
                attack_debuff = {
                    [optChar] = {
                        {
                            attr = "defend",
                            odds = 100,
                            during = 3,
                            val = level * abliOps.Val[1],
                            effect = "Abilities\\Spells\\Undead\\DeathandDecay\\DeathandDecayTarget.mdl"
                        }
                    }
                }
            }
        )
    elseif (abliOps.Name == "凤凰烈焰") then
        hattr.set(
            u,
            0,
            {
                attack_damage_type = opt .. "fire",
                attack_debuff = {
                    [optChar] = {
                        {
                            attr = "life_back",
                            odds = 100,
                            during = 5.00,
                            val = level * abliOps.Val[1],
                            effect = "Abilities\\Spells\\Other\\BreathOfFire\\BreathOfFireDamage.mdl"
                        }
                    }
                }
            }
        )
    elseif (abliOps.Name == "剧毒液体") then
        hattr.set(
            u,
            0,
            {
                attack_damage_type = opt .. "poison",
                attack_debuff = {
                    [optChar] = {
                        {
                            attr = "life_back",
                            odds = 100,
                            during = 5.00,
                            val = level * abliOps.Val[1],
                            effect = "Abilities\\Spells\\Other\\AcidBomb\\BottleImpact.mdl"
                        }
                    }
                }
            }
        )
    elseif (abliOps.Name == "猛毒试剂") then
        hattr.set(
            u,
            0,
            {
                attack_debuff = {
                    [optChar] = {
                        {
                            attr = "resistance",
                            odds = 100,
                            during = 3,
                            val = level * abliOps.Val[1],
                            effect = "Abilities\\Weapons\\PoisonSting\\PoisonStingTarget.mdl"
                        }
                    }
                }
            }
        )
    elseif (abliOps.Name == "千里冰封") then
        hattr.set(
            u,
            0,
            {
                attack_debuff = {
                    [optChar] = {
                        {
                            attr = "move",
                            odds = 35,
                            during = 3,
                            val = level * abliOps.Val[1],
                            effect = "Abilities\\Spells\\Undead\\FreezingBreath\\FreezingBreathTargetArt.mdl"
                        }
                    }
                }
            }
        )
    elseif (abliOps.Name == "暗夜对剑") then
        hattr.set(u, 0, {attack_damage_type = opt .. "dark", natural_dark = opt .. (level * abliOps.Val[1])})
    elseif (abliOps.Name == "恶龙吞日") then
        hattr.set(u, 0, {attack_damage_type = opt .. "dragon", natural_dragon = opt .. (level * abliOps.Val[1])})
    elseif (abliOps.Name == "恶鬼呼声") then
        hattr.set(u, 0, {attack_damage_type = opt .. "ghost", natural_ghost = opt .. (level * abliOps.Val[1])})
    elseif (abliOps.Name == "折翅天使") then
        hattr.set(u, 0, {attack_damage_type = opt .. "god", natural_god = opt .. (level * abliOps.Val[1])})
    elseif (abliOps.Name == "光导使者") then
        hattr.set(u, 0, {attack_damage_type = opt .. "light", natural_light = opt .. (level * abliOps.Val[1])})
    elseif (abliOps.Name == "冰心") then
        hattr.set(u, 0, {attack_damage_type = opt .. "ice", natural_ice = opt .. (level * abliOps.Val[1])})
    elseif (abliOps.Name == "邪魅之虫") then
        hattr.set(u, 0, {attack_damage_type = opt .. "insect", natural_insect = opt .. (level * abliOps.Val[1])})
    elseif (abliOps.Name == "德鲁伊叶子") then
        hattr.set(u, 0, {attack_damage_type = opt .. "wood", life_back = opt .. (level * abliOps.Val[1])})
    elseif (abliOps.Name == "雷神之手") then
        hattr.set(
            u,
            0,
            {
                attack_damage_type = opt .. "thunder",
                attack_effect = {
                    [optChar] = {
                        {
                            attr = "lightning_chain",
                            odds = 35,
                            qty = 3,
                            range = 600,
                            val = level * abliOps.Val[1],
                            change = -0.25,
                            effect = "Abilities\\Weapons\\Bolt\\BoltImpact.mdl"
                        }
                    }
                }
            }
        )
    elseif (abliOps.Name == "五行之力") then
        hattr.set(
            u,
            0,
            {
                natural_metal = opt .. (level * abliOps.Val[1]),
                natural_wood = opt .. (level * abliOps.Val[1]),
                natural_water = opt .. (level * abliOps.Val[1]),
                natural_fire = opt .. (level * abliOps.Val[1]),
                natural_soil = opt .. (level * abliOps.Val[1])
            }
        )
    elseif (abliOps.Name == "五行相克") then
        hattr.set(
            u,
            0,
            {
                natural_metal_oppose = opt .. (level * abliOps.Val[1]),
                natural_wood_oppose = opt .. (level * abliOps.Val[1]),
                natural_water_oppose = opt .. (level * abliOps.Val[1]),
                natural_fire_oppose = opt .. (level * abliOps.Val[1]),
                natural_soil_oppose = opt .. (level * abliOps.Val[1])
            }
        )
    elseif (abliOps.Name == "赤血盾牌") then
        hattr.set(u, 0, {life = opt .. (level * abliOps.Val[1]), defend = opt .. (level * abliOps.Val[2])})
    elseif (abliOps.Name == "亢奋战鼓") then
        hattr.set(u, 0, {toughness = opt .. (level * abliOps.Val[1])})
    elseif (abliOps.Name == "离子雨") then
        hattr.set(u, 0, {lightning_chain_oppose = opt .. (level * abliOps.Val[1])})
    elseif (abliOps.Name == "抗性神经") then
        hattr.set(u, 0, {resistance = opt .. (level * abliOps.Val[1])})
    elseif (abliOps.Name == "荆棘") then
        hattr.set(u, 0, {damage_rebound = opt .. (level * abliOps.Val[1])})
    end
    if (abliOps.Name == "双修对剑") then
        hattr.set(
            u,
            0,
            {
                attack_green = opt .. (level * abliOps.Val[1]),
                str_green = opt .. (level * abliOps.Val[2]),
                agi_green = opt .. (level * abliOps.Val[3])
            }
        )
    elseif (abliOps.Name == "音速回击") then
        hattr.set(u, 0, {attack_speed = opt .. (level * abliOps.Val[1])})
    elseif (abliOps.Name == "疾风") then
        hattr.set(u, 0, {attack_damage_type = opt .. "wind", natural_wind = opt .. (level * abliOps.Val[1])})
    elseif (abliOps.Name == "魔神之剑") then
        hattr.set(u, 0, {damage_extent = opt .. (level * abliOps.Val[1])})
    elseif (abliOps.Name == "胆颤心惊") then
        hattr.set(
            u,
            0,
            {
                attack_debuff = {
                    [optChar] = {
                        {
                            attr = "defend",
                            odds = 100,
                            during = 6,
                            val = level * abliOps.Val[1],
                            effect = "Abilities\\Spells\\Undead\\DeathandDecay\\DeathandDecayTarget.mdl"
                        },
                        {
                            attr = "life_back",
                            odds = 100,
                            val = level * abliOps.Val[1],
                            during = 6,
                            effect = "Objects\\Spawnmodels\\Human\\HumanBlood\\BloodElfSpellThiefBlood.mdl"
                        }
                    }
                }
            }
        )
    elseif (abliOps.Name == "害怕") then
        hattr.set(
            u,
            0,
            {
                attack_effect = {
                    [optChar] = {
                        {
                            attr = "fetter",
                            odds = 30,
                            during = level * abliOps.Val[1],
                            effect = "Abilities\\Spells\\Items\\AIso\\AIsoTarget.mdl"
                        }
                    }
                }
            }
        )
    elseif (abliOps.Name == "天神加护") then
        hattr.set(u, 0, {life = opt .. (level * abliOps.Val[1]), life_back = opt .. (level * abliOps.Val[2])})
    elseif (abliOps.Name == "圣封护盾") then
        hattr.set(u, 0, {defend = opt .. (level * abliOps.Val[1]), resistance = opt .. (level * abliOps.Val[2])})
    elseif (abliOps.Name == "极速闪避") then
        hattr.set(u, 0, {avoid = opt .. (level * abliOps.Val[1])})
    elseif (abliOps.Name == "刺痛极限") then
        hattr.set(u, 0, {toughness = opt .. (level * abliOps.Val[1])})
    elseif (abliOps.Name == "刺网") then
        hattr.set(u, 0, {damage_rebound = opt .. (level * abliOps.Val[1])})
    end
end
addTowerSkillByBook = function(u, site, abliOps)
    if (u == nil or site == nil or abliOps == nil) then
        return
    end
    hskill.add(u, abliOps.ABILITY_ID)
    local playerIndex = hplayer.index(cj.GetOwningPlayer(u))
    game.towersAbilities[playerIndex][site] = abliOps
    if (abliOps.Name == nil) then
        return
    end
    setTowerSkillByBook(u, abliOps, "+")
end
delTowerSkillByBook = function(u, site, abliOps)
    if (u == nil or site == nil or abliOps == nil) then
        return
    end
    hskill.del(u, abliOps.ABILITY_ID)
    local playerIndex = hplayer.index(cj.GetOwningPlayer(u))
    game.towersAbilities[playerIndex][site] = nil
    if (abliOps.Name == nil) then
        return
    end
    setTowerSkillByBook(u, abliOps, "-")
end
onUnitItemsUesd = function(evtData)
    local u = evtData.triggerUnit
    local it = evtData.triggerItem
    local itId = hitem.getId(it)
    local itemSLK = hslk_global.itemsKV[itId]
    local p = cj.GetOwningPlayer(u)
    if (itemSLK == nil or itemSLK.INDEX == nil) then
        hmsg.echo00(p, "slk获取错误")
        return
    end
    if (itemSLK.I_TYPE == nil) then
        hmsg.echo00(p, "物品I类型获取错误")
        return
    end
    if (itemSLK.I_TYPE == "tower") then
        --tower
        local playerIndex = hplayer.index(p)
        local marks = {
            hunit.getSlk(game.playerTower[playerIndex]).MARK or 0
        }
        local names = {
            "[主兵]" .. hunit.getName(game.playerTower[playerIndex])
        }
        local dots = {
            string.findCount(names[1], "·")
        }
        local nls = {
            string.mb_len(names[1]) - dots[1]
        }
        local bigMark = marks[1]
        local bigNameLen = string.mb_len(names[1])
        local bigDotLen = dots[1]
        for i = 1, 4, 1 do
            marks[i + 1] = game.playerTowerLink[playerIndex][i].mark or 0
            if (marks[i + 1] > bigMark) then
                bigMark = marks[i + 1]
            end
            names[i + 1] = hunit.getName(game.playerTowerLink[playerIndex][i].unit)
            if (names[i + 1] == "空位") then
                names[i + 1] = "[N阶]空位"
            end
            names[i + 1] = "[辅兵]" .. names[i + 1]
            dots[i + 1] = string.findCount(names[i + 1], "·")
            nls[i + 1] = string.mb_len(names[i + 1]) - dots[i + 1]
            if (nls[i + 1] > bigNameLen) then
                bigNameLen = nls[i + 1]
            end
            if (dots[i + 1] > bigDotLen) then
                bigDotLen = dots[i + 1]
            end
        end
        local bigMarkLen = string.len(tostring(bigMark))
        for i, v in ipairs(marks) do
            local vlen = string.len(tostring(v))
            if (vlen < bigMarkLen) then
                marks[i] = string.rep(" ", bigMarkLen - vlen) .. v
            end
        end
        for i, v in ipairs(names) do
            if (nls[i] < bigNameLen) then
                names[i] = v .. string.rep("　", bigNameLen - nls[i])
            end
            if (bigDotLen > dots[i]) then
                names[i] = names[i] .. string.rep(" ", bigDotLen - dots[i])
            end
        end
        local btns = {
            {
                value = 512,
                label = "[ESC][" .. hColor.grey("吞噬升1级") .. "]"
            },
            {
                value = 0,
                label = hColor.yellow(marks[1] .. "分" .. "-" .. names[1])
            }
        }
        for i = 1, 4, 1 do
            table.insert(
                btns,
                {
                    value = i,
                    label = hColor.sky(marks[i + 1] .. "分" .. "-" .. names[i + 1])
                }
            )
        end
        local title =
            "兵塔石：" ..
            game.towers[itemSLK.INDEX].MARK ..
                "分" .. game.towers[itemSLK.INDEX].TOWER_POWER .. "阶" .. game.towers[itemSLK.INDEX].Name
        hdialog.create(
            p,
            {
                title = title,
                buttons = btns
            },
            function(btnIdx)
                if (btnIdx == 512) then
                    hhero.setCurLevel(
                        game.playerTower[playerIndex],
                        1 + hhero.getCurLevel(game.playerTower[playerIndex]),
                        false
                    )
                    hmsg.echo00(p, "通过吞噬兵塔石,兵塔提升了" .. hColor.yellow(1) .. "级")
                    return
                elseif (btnIdx == 0) then
                    local u = createMyTower(playerIndex, game.towers[itemSLK.INDEX].UNIT_ID)
                    hmsg.echo(
                        hColor.sky(cj.GetPlayerName(p)) ..
                            "召唤了兵塔：[" .. hColor.yellow(game.towers[itemSLK.INDEX].Name) .. "]"
                    )
                    addTowerSkillsRaceTeam(playerIndex)
                else
                    local u = createMyTowerLink(playerIndex, btnIdx, game.towers[itemSLK.INDEX].UNIT_ID)
                    hmsg.echo(
                        hColor.sky(cj.GetPlayerName(p)) ..
                            "设置了核心：[" .. hColor.yellow(game.towers[itemSLK.INDEX].Name) .. "]"
                    )
                    addTowerSkillsRaceTeam(playerIndex)
                end
            end
        )
    elseif (itemSLK.I_TYPE == "courier") then
        --信使
        local playerIndex = hplayer.index(p)
        local u = createMyCourier(playerIndex, game.courier[itemSLK.INDEX].UNIT_ID)
        hmsg.echo(
            hColor.sky(cj.GetPlayerName(p)) .. "召唤了信使：[" .. hColor.yellow(game.courier[itemSLK.INDEX].Name) .. "]"
        )
        if (u ~= nil and cj.GetLocalPlayer() == p) then
            cj.ClearSelection()
            cj.SelectUnit(u, true)
        end
    elseif (itemSLK.I_TYPE == "ability") then
        local abils = game.thisOptionAbility[itemSLK.INDEX]
        if (abils == nil or table.len(abils) <= 0) then
            hmsg.echo00(p, "技能获取错误")
            return
        end
        local sites = {}
        if (itemSLK.ABILITY_COLOR == "yellow") then
            sites = {"S", "D"}
        elseif (itemSLK.ABILITY_COLOR == "blue") then
            sites = {"X", "C", "V"}
        elseif (itemSLK.ABILITY_COLOR == "purple") then
            sites = {"F"}
        end
        local playerIndex = hplayer.index(p)
        local btns = {}
        local emptySite = nil
        for k, v in ipairs(sites) do
            if (game.towersAbilities[playerIndex][v].ABILITY_LEVEL == nil) then
                if (emptySite == nil) then
                    emptySite = v
                    break
                end
                btns[k] = {
                    value = v,
                    label = hColor.yellow(
                        "[" .. v .. "]-[" .. hColor.grey(game.towersAbilities[playerIndex][v].Name) .. "]"
                    )
                }
            else
                btns[k] = {
                    value = v,
                    label = hColor.yellow(
                        "[" ..
                            v ..
                                "]-[" ..
                                    game.towersAbilities[playerIndex][v].Name ..
                                        "][" .. game.towersAbilities[playerIndex][v].ABILITY_LEVEL .. "级]"
                    )
                }
            end
        end
        if (emptySite == nil) then
            table.insert(
                btns,
                {
                    value = 512,
                    label = "[ESC][" .. hColor.grey("卖掉技能书") .. "]"
                }
            )
            hdialog.create(
                p,
                {
                    title = itemSLK.DIALOG_TITLE,
                    buttons = btns
                },
                function(btnIdx)
                    if (btnIdx == 512) then
                        hplayer.addGold(hplayer.players[playerIndex], 30, u)
                        return
                    end
                    hmsg.echo00(
                        p,
                        "你选择了[" ..
                            hColor.yellow(btnIdx) ..
                                "]位置，来学习[" ..
                                    hColor.yellow(abils[btnIdx].ABILITY_LEVEL .. "级" .. abils[btnIdx].Name) .. "]"
                    )
                    delTowerSkillByBook(
                        game.playerTower[playerIndex],
                        btnIdx,
                        game.towersAbilities[playerIndex][btnIdx]
                    )
                    addTowerSkillByBook(game.playerTower[playerIndex], btnIdx, abils[btnIdx])
                    if (itemSLK.ABILITY_COLOR == "yellow") then
                        heffect.toUnit("war3mapImported\\eff_burst_round_gold.mdl", game.playerTower[playerIndex], 0)
                    elseif (itemSLK.ABILITY_COLOR == "blue") then
                        heffect.toUnit("war3mapImported\\eff_burst_round.mdl", game.playerTower[playerIndex], 0)
                    elseif (itemSLK.ABILITY_COLOR == "purple") then
                        heffect.toUnit("war3mapImported\\eff_burst_round_purple.mdl", game.playerTower[playerIndex], 0)
                    end
                end
            )
        else
            local btnIdx = emptySite
            hmsg.echo00(
                p,
                "兵塔自动挑选了[" ..
                    hColor.yellow(btnIdx) ..
                        "]位置，学习了[" .. hColor.yellow(abils[btnIdx].ABILITY_LEVEL .. "级" .. abils[btnIdx].Name) .. "]"
            )
            delTowerSkillByBook(game.playerTower[playerIndex], btnIdx, game.towersAbilities[playerIndex][btnIdx])
            addTowerSkillByBook(game.playerTower[playerIndex], btnIdx, abils[btnIdx])
            if (itemSLK.ABILITY_COLOR == "yellow") then
                heffect.toUnit("war3mapImported\\eff_burst_round_gold.mdl", game.playerTower[playerIndex], 0)
            elseif (itemSLK.ABILITY_COLOR == "blue") then
                heffect.toUnit("war3mapImported\\eff_burst_round.mdl", game.playerTower[playerIndex], 0)
            elseif (itemSLK.ABILITY_COLOR == "purple") then
                heffect.toUnit("war3mapImported\\eff_burst_round_purple.mdl", game.playerTower[playerIndex], 0)
            end
        end
    elseif (itemSLK.I_TYPE == "effect_model" and itemSLK.INDEX == "超次元套装礼包") then
        local playerIndex = hplayer.index(p)
        --选择套装
        local tz = {}
        if (hdzapi.hasMallItem(hplayer.players[playerIndex], "TZFIRE") == true) then
            table.insert(tz, "炎炎焚烧套装")
        end
        if (hdzapi.hasMallItem(hplayer.players[playerIndex], "TZGOLD") == true) then
            table.insert(tz, "金碧辉煌套装")
        end
        if (hdzapi.hasMallItem(hplayer.players[playerIndex], "TZBLOOD") == true) then
            table.insert(tz, "血色炽热套装")
        end
        if (hdzapi.hasMallItem(hplayer.players[playerIndex], "TZDRAGON") == true) then
            table.insert(tz, "青龙碧翼套装")
        end
        if (hdzapi.hasMallItem(hplayer.players[playerIndex], "TZDARK") == true) then
            table.insert(tz, "迷幻黑紫套装")
        end
        if (hdzapi.hasMallItem(hplayer.players[playerIndex], "TZGHOST") == true) then
            table.insert(tz, "邪鬼怨灵套装")
        end
        if (hdzapi.hasMallItem(hplayer.players[playerIndex], "TZSWORD") == true) then
            table.insert(tz, "出云剑仙套装")
        end
        if (#tz <= 0) then
            hmsg.echo00(hplayer.players[playerIndex], "您尚未拥有任何套装~")
            return
        end
        hdialog.create(
            hplayer.players[playerIndex],
            {
                title = "选择专属套装",
                buttons = tz
            },
            function(btnIdx)
                --清空之前的装扮
                if (game.playerTowerEffectModel[playerIndex] == nil) then
                    game.playerTowerEffectModel[playerIndex] = {}
                end
                if (#game.playerTowerEffectModel[playerIndex] > 0) then
                    for _, v in ipairs(game.playerTowerEffectModel[playerIndex]) do
                        hskill.del(game.playerTower[playerIndex], v, 0)
                    end
                    game.playerTowerEffectModel[playerIndex] = {}
                end
                local tips
                if (btnIdx == "金碧辉煌套装") then
                    table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["金耀翅膀特效"].ABILITY_ID)
                    table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["金耀公正特效"].ABILITY_ID)
                    table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["金耀天堂特效"].ABILITY_ID)
                    table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["金耀精灵特效"].ABILITY_ID)
                    tips = "金耀翅膀、公正光辉、天堂圣音、金色精灵"
                elseif (btnIdx == "迷幻黑紫套装") then
                    table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["幻黑翅膀特效"].ABILITY_ID)
                    table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["幻黑迷紫特效"].ABILITY_ID)
                    table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["幻黑迷阵特效"].ABILITY_ID)
                    tips = "幻黑翅膀、迷紫幻象、迷惑雾阵"
                elseif (btnIdx == "血色炽热套装") then
                    table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["血色翅膀特效"].ABILITY_ID)
                    table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["血色漩涡特效"].ABILITY_ID)
                    table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["血色符文特效"].ABILITY_ID)
                    tips = "血色翅膀、赤红漩涡、祭奠符文"
                elseif (btnIdx == "青龙碧翼套装") then
                    table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["青空之翼特效"].ABILITY_ID)
                    table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["游龙欢悦特效"].ABILITY_ID)
                    table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["青龙吐息特效"].ABILITY_ID)
                    tips = "青空之翼、游龙欢悦、龙腾吐息"
                elseif (btnIdx == "邪鬼怨灵套装") then
                    table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["邪鬼怨灵特效"].ABILITY_ID)
                    table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["邪鬼阵法特效"].ABILITY_ID)
                    table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["邪鬼符文特效"].ABILITY_ID)
                    table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["邪鬼之眼特效"].ABILITY_ID)
                    tips = "邪鬼怨灵、邪鬼阵法、超度符文、逗趣鬼眼"
                elseif (btnIdx == "炎炎焚烧套装") then
                    table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["炎炎旋风特效"].ABILITY_ID)
                    table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["炎炎领域特效"].ABILITY_ID)
                    table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["炎炎燃烧特效"].ABILITY_ID)
                    table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["炎炎三球特效"].ABILITY_ID)
                    tips = "炎炎旋风、烧灼圈圈、焚烧之火、鬼马火球"
                elseif (btnIdx == "出云剑仙套装") then
                    table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["出云飞剑特效"].ABILITY_ID)
                    table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["出云气场特效"].ABILITY_ID)
                    table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["出云飞龙特效"].ABILITY_ID)
                    tips = "盘旋飞剑、灵剑气场、飞龙在天"
                end
                if (#game.playerTowerEffectModel[playerIndex] > 0) then
                    for _, v in ipairs(game.playerTowerEffectModel[playerIndex]) do
                        hskill.add(game.playerTower[playerIndex], v, 0)
                    end
                    hmsg.echo00(hplayer.players[playerIndex], "成功装扮了：" .. hColor.yellow(tips))
                end
            end
        )
    elseif (itemSLK.I_TYPE == "strategy") then
        --战略物品
        local playerIndex = hplayer.index(p)
        local ii = itemSLK.INDEX
        if (ii == "起死回生药水") then
            heffect.toUnit("war3mapImported\\eff_holy_light2.mdl", game.playerTower[playerIndex])
            hunit.setCurLifePercent(game.playerTower[playerIndex], 100)
        elseif (ii == "天剑切符" or ii == "武神切符" or ii == "变异切符" or ii == "恶魔切符" or ii == "恶灵切符") then
            local ts = {game.playerTower[playerIndex]}
            for i = 1, 4, 1 do
                if (game.playerTowerLink[playerIndex][i] ~= nil) then
                    table.insert(ts, game.playerTowerLink[playerIndex][i].unit)
                end
            end
            heffect.toUnit("war3mapImported\\eff_s_EvilWave_Effect.mdl", game.playerTower[playerIndex])
            if (ii == "天剑切符") then
                for _, u in pairs(ts) do
                    hattr.set(
                        u,
                        30,
                        {
                            attack_damage_type = "+god",
                            attack_green = "+500"
                        }
                    )
                end
            elseif (ii == "武神切符") then
                for _, u in pairs(ts) do
                    hattr.set(
                        u,
                        30,
                        {
                            attack_speed = "+75"
                        }
                    )
                end
            elseif (ii == "变异切符") then
                for _, u in pairs(ts) do
                    hattr.set(
                        u,
                        30,
                        {
                            attack_damage_type = "+fire,water,ice,wind,thunder,soil"
                        }
                    )
                end
            elseif (ii == "恶魔切符") then
                for _, u in pairs(ts) do
                    hattr.set(
                        u,
                        30,
                        {
                            damage_extent = "+33",
                            defend = "-100"
                        }
                    )
                end
            elseif (ii == "恶灵切符") then
                for _, u in pairs(ts) do
                    hattr.set(
                        u,
                        30,
                        {
                            natural_ghost = "+50"
                        }
                    )
                end
            end
            ts = nil
        elseif (ii == "圣杯切符") then
            hplayer.addGoldRatio(p, 15, 90)
            heffect.bindUnit("war3mapImported\\eff_Retribution.mdl", game.playerTower[playerIndex], "origin", 90)
        elseif (ii == "陋室切符") then
            hplayer.addExpRatio(p, 20, 90)
            heffect.bindUnit(
                "war3mapImported\\eff_MysticVeil_Portrait.mdl",
                game.playerTower[playerIndex],
                "origin",
                90
            )
        elseif (ii == "王室切符") then
            hplayer.addGoldRatio(p, 10, 90)
            hplayer.addSellRatio(p, 25, 90)
            heffect.bindUnit(
                "war3mapImported\\eff_Aura_Runica_Con_Fuego.mdl",
                game.playerTower[playerIndex],
                "origin",
                90
            )
        elseif (ii == "锤敕令" or ii == "盾敕令" or ii == "剑敕令" or ii == "斧敕令") then
            local ts = {}
            if (ii == "锤敕令") then
                local hummarDur = 10 / 0.75
                htime.setInterval(
                    0.75,
                    function(t)
                        hummarDur = hummarDur - 1
                        if (hummarDur < 0) then
                            htime.delTimer(t)
                            return
                        end
                        for pi = 1, 4, 1 do
                            if (hplayer.getStatus(hplayer.players[pi]) == hplayer.player_status.gaming) then
                                local dmg = math.random(500, 1500)
                                hunit.subCurLife(game.playerTower[pi], dmg)
                                hmsg.echo(
                                    hColor.sky(cj.GetPlayerName(hplayer.players[pi])) ..
                                        "被黑色悍马雷劈掉了" .. hColor.redLight(dmg) .. "血"
                                )
                                heffect.toUnit("war3mapImported\\eff_lighting_black.mdl", game.playerTower[pi], 0)
                            end
                        end
                    end
                )
            elseif (ii == "盾敕令") then
                for pi = 1, 4, 1 do
                    if (playerIndex ~= pi and hplayer.getStatus(p) == hplayer.player_status.gaming) then
                        table.insert(ts, game.playerTower[pi])
                        for i = 1, 4, 1 do
                            if
                                (game.playerTowerLink[pi][i] ~= nil and
                                    his.locust(game.playerTowerLink[pi][i].unit) == false)
                             then
                                table.insert(ts, game.playerTowerLink[pi][i].unit)
                            end
                        end
                    end
                end
                for _, u in pairs(ts) do
                    hattr.set(
                        u,
                        10,
                        {
                            attack_speed = "-100"
                        }
                    )
                end
            elseif (ii == "剑敕令") then
                for pi = 1, 4, 1 do
                    if (playerIndex ~= pi and hplayer.getStatus(p) == hplayer.player_status.gaming) then
                        table.insert(ts, game.playerTower[pi])
                        for i = 1, 4, 1 do
                            if (his.alive(game.playerTowerLink[pi][i]) == true) then
                                table.insert(ts, game.playerTowerLink[pi][i].unit)
                            end
                            if (his.alive(game.playerCourier[pi]) == true) then
                                table.insert(ts, game.playerCourier[pi])
                            end
                        end
                    end
                end
                for _, u in pairs(ts) do
                    hskill.swim(
                        {
                            whichUnit = u,
                            during = 10,
                            odds = 999,
                            effect = "war3mapImported\\eff_flame_Great_Sword_Falls.mdl"
                        }
                    )
                end
            elseif (ii == "斧敕令") then
                for pi = 1, 4, 1 do
                    if (playerIndex ~= pi and hplayer.getStatus(p) == hplayer.player_status.gaming) then
                        table.insert(ts, game.playerTower[pi])
                    end
                end
                for _, u in pairs(ts) do
                    hunit.setCurLife(u, hunit.getCurLife(u) * 0.8)
                    heffect.toUnit("war3mapImported\\eff_black_chain_flash.mdl", u, 0)
                end
            end
            ts = nil
        end
    end
end
onCourierSkillUesdTTG = function(u, text)
    htextTag.style(htextTag.create2Unit(u, text, 8, "ccffff", 1, 1.5, 50), "scale", 0, 0.05)
end
onCourierSkillUesd = function(evtData)
    local u = evtData.triggerUnit
    if (his.silent(u) == true) then
        return
    end
    local skillid = evtData.triggerSkill
    local abilitiesSLK = hslk_global.abilitiesKV[skillid]
    local p = cj.GetOwningPlayer(u)
    local playerIndex = hplayer.index(p)
    if (abilitiesSLK == nil or abilitiesSLK.Name == nil) then
        return
    end
    --curWave
    local curWave = 1
    if (game.rule.cur == "yb") then
        curWave = game.rule.yb.wave
    elseif (game.rule.cur == "hz") then
        curWave = game.rule.hz.wave
    elseif (game.rule.cur == "dk") then
        curWave = game.rule.dk.wave[hplayer.index(cj.GetOwningPlayer(u))]
    end
    --
    if (abilitiesSLK.Name == "火焰吐息") then
        onCourierSkillUesdTTG(game.playerTower[playerIndex], abilitiesSLK.Name)
        hattr.set(
            game.playerTower[playerIndex],
            45,
            {
                attack_damage_type = "+fire",
                natural_fire = "+2.5"
            }
        )
        heffect.bindUnit(
            "Abilities\\Spells\\Other\\BreathOfFire\\BreathOfFireDamage.mdl",
            game.playerTower[playerIndex],
            "weapon",
            45
        )
    elseif (abilitiesSLK.Name == "霜寒脚步") then
        onCourierSkillUesdTTG(game.playerTower[playerIndex], abilitiesSLK.Name)
        hattr.set(
            game.playerTower[playerIndex],
            45,
            {
                attack_damage_type = "+ice",
                natural_ice = "+3.5",
                attack_debuff = {
                    add = {
                        {
                            attr = "move",
                            odds = 50,
                            val = 45,
                            during = 2.2,
                            effect = "war3mapImported\\eff_icing.mdl"
                        }
                    }
                }
            }
        )
        heffect.bindUnit("Abilities\\Spells\\Items\\AIob\\AIobTarget.mdl", game.playerTower[playerIndex], "weapon", 45)
    elseif (abilitiesSLK.Name == "兵塔石吞噬") then
        local lvUpQty = 0
        for ti = 0, 5, 1 do
            local it = cj.UnitItemInSlot(u, ti)
            if (it ~= nil) then
                local itemSLK = hslk_global.itemsKV[hitem.getId(it)]
                if (itemSLK.I_TYPE == "tower") then
                    lvUpQty = lvUpQty + hitem.getCharges(it)
                    hitem.del(it, 0)
                end
            end
        end
        if (lvUpQty > 0) then
            hhero.setCurLevel(
                game.playerTower[playerIndex],
                lvUpQty + hhero.getCurLevel(game.playerTower[playerIndex]),
                false
            )
            hmsg.echo00(p, "通过吞噬兵塔石,兵塔提升了" .. hColor.yellow(lvUpQty) .. "级")
        else
            htextTag.style(htextTag.create2Unit(u, "找不到兵塔石~", 7, "ffff00", 1, 1.5, 50), "scale", 0, 0.05)
        end
    elseif (abilitiesSLK.Name == "呼唤技能书·蓝") then
        if (hplayer.getGold(p) < 750) then
            htextTag.style(htextTag.create2Unit(u, "不够金币呢~", 7, "ff3939", 1, 1.5, 50), "scale", 0, 0.05)
            return
        else
            hplayer.subGold(p, 750)
            local tarBLv = getBookPowLevel(curWave)
            hitem.create(
                {
                    itemId = table.random(game.thisOptionAbilityItem["blue"][tarBLv]).ITEM_ID,
                    whichUnit = u
                }
            )
        end
    elseif (abilitiesSLK.Name == "呼唤技能书·黄") then
        if (hplayer.getGold(p) < 1250) then
            htextTag.style(htextTag.create2Unit(u, "不够金币呢~", 7, "ff3939", 1, 1.5, 50), "scale", 0, 0.05)
            return
        else
            hplayer.subGold(p, 1250)
            local tarBLv = getBookPowLevel(curWave)
            hitem.create(
                {
                    itemId = table.random(game.thisOptionAbilityItem["yellow"][tarBLv]).ITEM_ID,
                    whichUnit = u
                }
            )
        end
    elseif (abilitiesSLK.Name == "呼唤技能书·紫") then
        if (hplayer.getGold(p) < 2500) then
            htextTag.style(htextTag.create2Unit(u, "不够金币呢~", 7, "ff3939", 1, 1.5, 50), "scale", 0, 0.05)
            return
        else
            hplayer.subGold(p, 2500)
            local tarBLv = getBookPowLevel(curWave)
            hitem.create(
                {
                    itemId = table.random(game.thisOptionAbilityItem["purple"][tarBLv]).ITEM_ID,
                    whichUnit = u
                }
            )
        end
    elseif (abilitiesSLK.Name == "召唤新兵塔") then
        if (hplayer.getGold(p) < 750) then
            htextTag.style(htextTag.create2Unit(u, "不够金币呢~", 7, "ff3939", 1, 1.5, 50), "scale", 0, 0.05)
            return
        else
            hplayer.subGold(p, 750)
            local tarBLv = getTowerPowLevel(curWave)
            hitem.create(
                {
                    itemId = table.random(game.thisOptionTowerPowerItem[tarBLv]).ITEM_ID,
                    whichUnit = u
                }
            )
        end
    elseif (abilitiesSLK.Name == "洗天赋") then
        if (game.playerTowerLevel[playerIndex] >= 9) then
            htextTag.style(htextTag.create2Unit(u, "最好的天赋哦，别错洗啦~", 7, "ccffcc", 1, 1.5, 50), "scale", 0, 0.05)
            return
        end
        if (hplayer.getGold(p) < 1000) then
            htextTag.style(htextTag.create2Unit(u, "不够金币呢~", 7, "ff3939", 1, 1.5, 50), "scale", 0, 0.05)
            return
        else
            hplayer.subGold(p, 1000)
            subTowerLevel(playerIndex)
            addTowerLevel(playerIndex)
        end
    elseif (abilitiesSLK.Name == "开心金箱子") then
        if (hplayer.getLumber(p) < 30) then
            htextTag.style(htextTag.create2Unit(u, "不够30木头呢~", 7, "ff3939", 1, 1.5, 50), "scale", 0, 0.05)
            return
        else
            hplayer.subLumber(p, 30)
            local gold = 0
            local label = "谢谢惠顾"
            local color = "ffffff"
            local randg = math.random(1, 100)
            if (randg >= 1 and randg < 54) then
                gold = 388
                label = "三等赏！"
                color = "80ffff"
            elseif (randg >= 55 and randg < 84) then
                gold = 888
                label = "二等赏！！"
                color = "ffffcc"
            elseif (randg >= 85 and randg <= 90) then
                gold = 1888
                label = "一等赏！！！"
                color = "ffcc00"
            elseif (randg == 54) then
                gold = 8888
                label = "特等赏！！！！"
                color = "ff3939"
            end
            if (gold > 0) then
                hsound.sound2Player(cg.gg_snd_coin_1, p)
                hplayer.addGold(p, gold)
                htextTag.style(
                    htextTag.create2Unit(u, label .. "+ " .. gold, 7, color, 1, 1.70, 60.00),
                    "toggle",
                    0,
                    0.25
                )
                if (gold >= 1888) then
                    hmsg.echo(hColor.sky(cj.GetPlayerName(p)) .. "抽到了|cff" .. color .. label .. "|r，大家祝贺TA！")
                end
            else
                hsound.sound2Player(cg.gg_snd_sell_item, p)
                htextTag.style(htextTag.create2Unit(u, label, 7, color, 1, 1.70, 60.00), "toggle", 0, 0.25)
            end
        end
    elseif (abilitiesSLK.Name == "装备升华") then
        local itemQty = 0
        local itemLv = 0
        local itemSlkCache = {}
        for si = 0, 5, 1 do
            local tempIt = cj.UnitItemInSlot(u, si)
            if (tempIt ~= nil) then
                local tslk = hitem.getSlk(tempIt)
                if (tslk ~= nil and (tslk.I_TYPE == "combo" or tslk.I_TYPE == "equip")) then
                    itemQty = itemQty + hitem.getCharges(tempIt)
                    itemLv = itemLv + tslk.LEVEL
                    itemSlkCache[tempIt] = tslk
                end
            end
            tempIt = nil
        end
        if (itemQty < 2) then
            htextTag.style(htextTag.create2Unit(u, "至少要2件装备", 7, "ff3939", 1, 1.5, 50), "scale", 0, 0.05)
            return
        end
        local need = 500 * itemQty
        if (hplayer.getGold(p) < need) then
            htextTag.style(htextTag.create2Unit(u, "不够金币呢~", 7, "ff3939", 1, 1.5, 50), "scale", 0, 0.05)
            return
        else
            hplayer.subGold(p, need)
            for tempIt, v in pairs(itemSlkCache) do
                hitem.del(tempIt, 0)
            end
            itemSlkCache = nil
            local downLv = math.floor(itemLv * 0.8)
            if (downLv < 1) then
                downLv = 1
            elseif (downLv > 200) then
                downLv = 200
            end
            local comboIt = {}
            for cbi = downLv, itemLv, 1 do
                if (game.thisComboItem[cbi] ~= nil) then
                    for _, civ in pairs(game.thisComboItem[cbi]) do
                        table.insert(comboIt, civ)
                    end
                end
            end
            if (#comboIt <= 0) then
                htextTag.style(htextTag.create2Unit(u, "升华失败了,恨啊!", 7, "ff3939", 1, 1.5, 50), "scale", 0, 0.05)
                return
            end
            local randIt = table.random(comboIt)
            comboIt = nil
            hitem.create(
                {
                    itemId = randIt.ITEM_ID,
                    charges = 1,
                    whichUnit = u
                }
            )
            hmsg.echo(
                hColor.sky(cj.GetPlayerName(p)) ..
                    "利用" .. hColor.yellow(itemQty) .. "件装备升华出了" .. hColor.green(randIt.Name) .. "！"
            )
            randIt = nil
        end
    end
end
onTowerAttackTtgCount = 1
onTowerAttackTtg = function(u, string)
    htextTag.style(
        htextTag.create2Unit(u, string, 6.9 + onTowerAttackTtgCount * 0.1, "FFFF00", 2, 2, 10),
        "scale",
        0,
        onTowerAttackTtgCount * 0.05
    )
    onTowerAttackTtgCount = onTowerAttackTtgCount + 1
    htime.setTimeout(
        2,
        function(t, td)
            htime.delDialog(td)
            htime.delTimer(t)
            onTowerAttackTtgCount = onTowerAttackTtgCount - 1
        end
    )
end
onTowerAttack = function(evtData)
    local u = evtData.attacker
    local targetUnit = evtData.targetUnit
    for ABILITY_ID, v in pairs(hslk_global.abilitiesKV) do
        if (hskill.has(u, ABILITY_ID)) then
            local name = v.Name
            local level = v.ABILITY_LEVEL or 1
            level = level * 2 - 1
            if (name ~= nil) then
                --ability
                if (name == "侵毒连击" and math.random(1, 7) == 4) then
                    onTowerAttackTtg(u, name)
                    hattr.set(
                        u,
                        5.00,
                        {
                            attack_damage_type = "+poison",
                            attack_speed = "+" .. 10 * level
                        }
                    )
                end
                if (name == "机关枪" and math.random(1, 5) == 3) then
                    onTowerAttackTtg(u, name)
                    hattr.set(
                        u,
                        2.50 * level,
                        {
                            attack_speed = "+" .. 12.5 * level
                        }
                    )
                end
                if (name == "掠夺黄金" and math.random(1, 100) <= level) then
                    onTowerAttackTtg(u, name)
                    haward.forUnitGold(u, 50 * level)
                end
                if (name == "震晕践踏" and math.random(1, 7) == 5) then
                    onTowerAttackTtg(u, name)
                    hskill.rangeSwim(
                        {
                            range = 895,
                            odds = 100,
                            during = 0.7 * level,
                            whichUnit = u,
                            filter = function()
                                return his.alive(cj.GetFilterUnit()) and his.enemy(cj.GetFilterUnit(), u)
                            end
                        }
                    )
                end
                if (name == "炸裂践踏" and math.random(1, 5) == 3) then
                    onTowerAttackTtg(u, name)
                    hskill.rangeSwim(
                        {
                            range = 895,
                            odds = 100,
                            during = 1.3 * level,
                            damage = 455 * level,
                            whichUnit = u,
                            sourceUnit = u,
                            effect = "war3mapImported\\eff_shock_explosion.mdl",
                            filter = function()
                                return his.alive(cj.GetFilterUnit()) and his.enemy(cj.GetFilterUnit(), u)
                            end
                        }
                    )
                end
                if (name == "冰花炸裂" and math.random(1, 4) == 3) then
                    onTowerAttackTtg(u, name)
                    local x = cj.GetUnitX(u)
                    local y = cj.GetUnitY(u)
                    heffect.toXY("war3mapImported\\eff_FrostNova.mdl", x, y, 0)
                    local g =
                        hgroup.createByUnit(
                        u,
                        895,
                        function()
                            return his.alive(cj.GetFilterUnit()) and his.enemy(cj.GetFilterUnit(), u)
                        end
                    )
                    cj.ForGroup(
                        g,
                        function()
                            local eu = cj.GetEnumUnit()
                            hattr.set(
                                eu,
                                7.5,
                                {
                                    move = "-" .. 45 * level,
                                    life_back = "-" .. 100 * level
                                }
                            )
                            heffect.toUnit("war3mapImported\\eff_frost_burst.mdl", eu, 0)
                            heffect.bindUnit("war3mapImported\\eff_icing.mdl", eu, "foot", 7.5)
                        end
                    )
                    cj.GroupClear(g)
                    cj.DestroyGroup(g)
                end
                if (name == "死亡同步" and math.random(1, 200) <= level and his.alive(targetUnit)) then
                    onTowerAttackTtg(u, name)
                    heffect.bindUnit("Abilities\\Spells\\Items\\AIso\\AIsoTarget.mdl", targetUnit, "origin", 1)
                    hunit.kill(targetUnit, 0)
                end
                --
                if (name == "偷窃" or name == "炼金" or name == "盗墓") then
                    local val = v.Val or {0}
                    if (math.random(1, 100) <= val[1]) then
                        onTowerAttackTtg(u, name)
                        haward.forUnitGold(u, val[2])
                        heffect.toUnit("Abilities\\Spells\\Other\\Transmute\\PileofGold.mdl", u, 0)
                    end
                end
                if (his.alive(targetUnit) and (name == "必死宣言" or name == "羊蹄子" or name == "同葬" or name == "引路人")) then
                    local val = v.Val or {0}
                    if (math.random(1, 100) <= val[1]) then
                        onTowerAttackTtg(u, name)
                        heffect.bindUnit("Abilities\\Spells\\Items\\AIso\\AIsoTarget.mdl", targetUnit, "origin", 1)
                        hunit.kill(targetUnit, 0)
                    end
                end
                if (name == "烈焰风暴") then
                    local val = v.Val or {0}
                    if (math.random(1, 100) <= val[1]) then
                        onTowerAttackTtg(u, name)
                        hskill.damageRange(
                            {
                                sourceUnit = u,
                                whichUnit = targetUnit,
                                range = v.Val[2],
                                frequency = v.Val[3],
                                damage = v.Val[4],
                                times = v.Val[5],
                                effect = v.Val[6],
                                effectSingle = v.Val[7],
                                damageType = {CONST_DAMAGE_TYPE.magic, CONST_DAMAGE_TYPE.fire},
                                filter = function()
                                    return his.alive(cj.GetFilterUnit()) and his.enemy(cj.GetFilterUnit(), u)
                                end
                            }
                        )
                    end
                end
                if (name == "雷霆一击" or name == "缠绕" or name == "霜冻新星") then
                    local val = v.Val or {0}
                    if (math.random(1, 100) <= val[1]) then
                        onTowerAttackTtg(u, name)
                        local x = cj.GetUnitX(u)
                        local y = cj.GetUnitY(u)
                        heffect.toXY(val[6], x, y, 0)
                        local g =
                            hgroup.createByUnit(
                            u,
                            895,
                            function()
                                return his.alive(cj.GetFilterUnit()) and his.enemy(cj.GetFilterUnit(), u)
                            end
                        )
                        local damageType = {}
                        if (name == "雷霆一击") then
                            damageType = {CONST_DAMAGE_TYPE.physical, CONST_DAMAGE_TYPE.thunder}
                        elseif (name == "缠绕") then
                            damageType = {CONST_DAMAGE_TYPE.physical, CONST_DAMAGE_TYPE.wood}
                        end
                        cj.ForGroup(
                            g,
                            function()
                                local eu = cj.GetEnumUnit()
                                hattr.set(eu, val[4], {[val[5]] = "-" .. val[3]})
                                heffect.bindUnit(val[7], eu, "origin", val[4])
                                hskill.damage(
                                    {
                                        sourceUnit = u,
                                        targetUnit = eu,
                                        damage = val[2],
                                        damageKind = CONST_DAMAGE_KIND.skill,
                                        damageType = damageType
                                    }
                                )
                            end
                        )
                        cj.GroupClear(g)
                        cj.DestroyGroup(g)
                    end
                end
                if (name == "石化凝视") then
                    local val = v.Val or {0}
                    if (math.random(1, 100) <= val[1]) then
                        onTowerAttackTtg(u, name)
                        local x = cj.GetUnitX(u)
                        local y = cj.GetUnitY(u)
                        heffect.toXY("war3mapImported\\eff_DarkLightningNova.mdl", x, y, 0)
                        local g =
                            hgroup.createByUnit(
                            u,
                            895,
                            function()
                                return his.alive(cj.GetFilterUnit()) and his.enemy(cj.GetFilterUnit(), u)
                            end
                        )
                        cj.ForGroup(
                            g,
                            function()
                                local eu = cj.GetEnumUnit()
                                hattr.set(
                                    eu,
                                    val[3],
                                    {
                                        move = "-522",
                                        defend = "-" .. val[2]
                                    }
                                )
                            end
                        )
                        cj.GroupClear(g)
                        cj.DestroyGroup(g)
                    end
                end
                if (name == "闻风丧胆") then
                    local val = v.Val or {0}
                    if (math.random(1, 100) <= val[1]) then
                        onTowerAttackTtg(u, name)
                        local x = cj.GetUnitX(u)
                        local y = cj.GetUnitY(u)
                        heffect.toXY("Abilities\\Spells\\Other\\HowlOfTerror\\HowlCaster.mdl", x, y, 0)
                        local g =
                            hgroup.createByUnit(
                            u,
                            895,
                            function()
                                return his.alive(cj.GetFilterUnit()) and his.enemy(cj.GetFilterUnit(), u)
                            end
                        )
                        cj.ForGroup(
                            g,
                            function()
                                local eu = cj.GetEnumUnit()
                                hattr.set(
                                    eu,
                                    val[3],
                                    {
                                        defend = "-" .. val[2]
                                    }
                                )
                                heffect.bindUnit(
                                    "Abilities\\Spells\\Other\\HowlOfTerror\\HowlTarget.mdl",
                                    eu,
                                    "overhead",
                                    val[3]
                                )
                            end
                        )
                        cj.GroupClear(g)
                        cj.DestroyGroup(g)
                    end
                end
                if (name == "震撼" or name == "龙魂斩" or name == "鱼人碎击" or name == "怒火碎击") then
                    local val = v.Val or {0}
                    if (math.random(1, 100) <= val[1]) then
                        onTowerAttackTtg(u, name)
                        local x = cj.GetUnitX(u)
                        local y = cj.GetUnitY(u)
                        hskill.rangeSwim(
                            {
                                range = 895,
                                during = val[3],
                                odds = 100,
                                effect = val[4],
                                x = x,
                                y = y,
                                damage = val[2] or 0,
                                sourceUnit = u,
                                filter = function()
                                    return his.alive(cj.GetFilterUnit()) and his.enemy(cj.GetFilterUnit(), u)
                                end
                            }
                        )
                    end
                end
                if (name == "灼烧大地") then
                    onTowerAttackTtg(u, name)
                    local val = v.Val or {0}
                    local g =
                        hgroup.createByUnit(
                        u,
                        895,
                        function()
                            return his.alive(cj.GetFilterUnit()) and his.enemy(cj.GetFilterUnit(), u)
                        end
                    )
                    cj.ForGroup(
                        g,
                        function()
                            local eu = cj.GetEnumUnit()
                            hskill.damage(
                                {
                                    sourceUnit = u,
                                    targetUnit = eu,
                                    damage = val[1],
                                    damageKind = CONST_DAMAGE_KIND.skill,
                                    damageType = {CONST_DAMAGE_TYPE.fire}
                                }
                            )
                        end
                    )
                    cj.GroupClear(g)
                    cj.DestroyGroup(g)
                end
                if (name == "猎手幻刀" or name == "觉醒幻刀" or name == "究极幻刀" or name == "冥冥斩击") then
                    onTowerAttackTtg(u, name)
                    local val = v.Val or {0}
                    local cut1 = "war3mapImported\\eff_x_round_dance.mdl"
                    local cut2 = "war3mapImported\\eff_Culling_Slash_Silver.mdl"
                    local damageType = {CONST_DAMAGE_TYPE.physical}
                    if (name == "觉醒幻刀") then
                        cut1 = "war3mapImported\\eff_light_speed_cutting.mdl"
                    elseif (name == "究极幻刀") then
                        cut1 = "war3mapImported\\eff_light_speed_cutting_green.mdl"
                        damageType = {CONST_DAMAGE_TYPE.physical, CONST_DAMAGE_TYPE.dark}
                    elseif (name == "冥冥斩击") then
                        cut1 = "war3mapImported\\eff_round_dance2.mdl"
                        cut2 = "Objects\\Spawnmodels\\Critters\\Albatross\\CritterBloodAlbatross.mdl"
                        damageType = {CONST_DAMAGE_TYPE.absolute}
                    end
                    heffect.toUnit(cut1, u, 1)
                    local g =
                        hgroup.createByUnit(
                        u,
                        895,
                        function()
                            return his.alive(cj.GetFilterUnit()) and his.enemy(cj.GetFilterUnit(), u)
                        end
                    )
                    cj.ForGroup(
                        g,
                        function()
                            local eu = cj.GetEnumUnit()
                            hskill.damage(
                                {
                                    sourceUnit = u,
                                    targetUnit = eu,
                                    damage = val[1],
                                    damageKind = CONST_DAMAGE_KIND.skill,
                                    damageType = damageType,
                                    effect = cut2
                                }
                            )
                        end
                    )
                    cj.GroupClear(g)
                    cj.DestroyGroup(g)
                end
                if (name == "剑刃风暴" and his.get(u, "isWhirlwind") == false) then
                    local val = v.Val or {0}
                    if (math.random(1, 100) <= val[1]) then
                        onTowerAttackTtg(u, name)
                        hskill.whirlwind(
                            {
                                range = 895,
                                frequency = val[2],
                                during = val[4],
                                filter = function()
                                    return his.alive(cj.GetFilterUnit()) and his.enemy(cj.GetFilterUnit(), u)
                                end,
                                damage = val[3],
                                sourceUnit = u,
                                animation = "spin",
                                damageKind = CONST_DAMAGE_KIND.skill,
                                damageType = {CONST_DAMAGE_TYPE.physical}
                            }
                        )
                    end
                end
                if (name == "震荡波" or name == "狼拳连打") then
                    local val = v.Val or {0}
                    if (math.random(1, 100) <= val[1]) then
                        onTowerAttackTtg(u, name)
                        local txy =
                            math.polarProjection(
                            cj.GetUnitX(u),
                            cj.GetUnitY(u),
                            1000,
                            math.getDegBetweenUnit(u, targetUnit)
                        )
                        for q = 1, val[2], 1 do
                            htime.setTimeout(
                                (q - 1) * 0.50,
                                function(t, td)
                                    htime.delDialog(td)
                                    htime.delDialog(t)
                                    hskill.leap(
                                        {
                                            sourceUnit = u,
                                            x = txy.x,
                                            y = txy.y,
                                            speed = 10,
                                            acceleration = 1,
                                            filter = function()
                                                return his.alive(cj.GetFilterUnit()) and
                                                    his.enemy(cj.GetFilterUnit(), u)
                                            end,
                                            tokenArrow = val[5],
                                            tokenArrowScale = 1.80,
                                            tokenArrowOpacity = 1,
                                            damageMovement = val[3],
                                            damageMovementRange = 125,
                                            damageKind = CONST_DAMAGE_KIND.skill,
                                            damageType = {CONST_DAMAGE_TYPE.physical},
                                            extraInfluence = function(eu)
                                                hskill.swim(
                                                    {
                                                        odds = 100,
                                                        whichUnit = eu,
                                                        during = val[4]
                                                    }
                                                )
                                            end
                                        }
                                    )
                                end
                            )
                        end
                    end
                elseif (name == "大海浪涛") then
                    local val = v.Val or {0}
                    if (math.random(1, 100) <= val[1]) then
                        onTowerAttackTtg(u, name)
                        local txy =
                            math.polarProjection(
                            cj.GetUnitX(u),
                            cj.GetUnitY(u),
                            1200,
                            math.getDegBetweenUnit(u, targetUnit)
                        )
                        hskill.leap(
                            {
                                sourceUnit = u,
                                x = txy.x,
                                y = txy.y,
                                speed = 10,
                                acceleration = 1,
                                filter = function()
                                    return his.alive(cj.GetFilterUnit()) and his.enemy(cj.GetFilterUnit(), u)
                                end,
                                tokenArrow = val[4],
                                tokenArrowScale = 1.60,
                                tokenArrowOpacity = 1,
                                damageMovement = val[3],
                                damageMovementRange = 225,
                                damageKind = CONST_DAMAGE_KIND.skill,
                                damageType = {CONST_DAMAGE_TYPE.water}
                            }
                        )
                    end
                elseif (name == "毁灭之剑") then
                    local val = v.Val or {0}
                    if (math.random(1, 100) <= val[1]) then
                        onTowerAttackTtg(u, name)
                        local txy =
                            math.polarProjection(
                            cj.GetUnitX(u),
                            cj.GetUnitY(u),
                            1300,
                            math.getDegBetweenUnit(u, targetUnit)
                        )
                        hskill.leap(
                            {
                                sourceUnit = u,
                                x = txy.x,
                                y = txy.y,
                                speed = 17,
                                acceleration = 0,
                                filter = function()
                                    return his.alive(cj.GetFilterUnit()) and his.enemy(cj.GetFilterUnit(), u)
                                end,
                                tokenArrow = val[3],
                                tokenArrowScale = 1.10,
                                tokenArrowOpacity = 1,
                                damageMovement = val[2],
                                damageMovementRange = 320,
                                damageKind = CONST_DAMAGE_KIND.special,
                                damageType = {CONST_DAMAGE_TYPE.absolute, CONST_DAMAGE_TYPE.dark}
                            }
                        )
                    end
                elseif (name == "乘风破浪") then
                    local val = v.Val or {0}
                    if (math.random(1, 100) <= val[1]) then
                        onTowerAttackTtg(u, name)
                        for q = 1, val[2], 1 do
                            htime.setTimeout(
                                (q - 1) * 0.55,
                                function(t, td)
                                    htime.delDialog(td)
                                    htime.delDialog(t)
                                    hskill.leap(
                                        {
                                            sourceUnit = u,
                                            targetUnit = targetUnit,
                                            speed = 8,
                                            acceleration = 0,
                                            filter = function()
                                                return his.alive(cj.GetFilterUnit()) and
                                                    his.enemy(cj.GetFilterUnit(), u)
                                            end,
                                            tokenArrow = val[5],
                                            tokenArrowScale = 1.20,
                                            tokenArrowOpacity = 1,
                                            damageMovement = val[3],
                                            damageMovementRange = 250,
                                            effectEnd = "war3mapImported\\eff_Shiva's_Wrath.mdl",
                                            damageKind = CONST_DAMAGE_KIND.skill,
                                            damageType = {CONST_DAMAGE_TYPE.physical},
                                            extraInfluence = function(eu)
                                                hskill.swim(
                                                    {
                                                        odds = 100,
                                                        whichUnit = eu,
                                                        during = val[4]
                                                    }
                                                )
                                            end
                                        }
                                    )
                                end
                            )
                        end
                    end
                elseif (name == "交叉战斧") then
                    local val = v.Val or {0}
                    if (math.random(1, 100) <= val[1]) then
                        onTowerAttackTtg(u, name)
                        local txy =
                            math.polarProjection(
                            cj.GetUnitX(u),
                            cj.GetUnitY(u),
                            900,
                            math.getDegBetweenUnit(u, targetUnit)
                        )
                        hskill.leapPow(
                            {
                                qty = val[2],
                                deg = 15,
                                sourceUnit = u,
                                x = txy.x,
                                y = txy.y,
                                speed = 17,
                                acceleration = -0.1,
                                filter = function()
                                    return his.alive(cj.GetFilterUnit()) and his.enemy(cj.GetFilterUnit(), u)
                                end,
                                tokenArrow = val[6],
                                tokenArrowScale = 1.60,
                                tokenArrowOpacity = 1,
                                damageMovement = val[3],
                                damageMovementRange = 100,
                                damageKind = CONST_DAMAGE_KIND.special,
                                damageType = {CONST_DAMAGE_TYPE.physical},
                                damageEffect = "Objects\\Spawnmodels\\Critters\\Albatross\\CritterBloodAlbatross.mdl"
                            }
                        )
                    end
                elseif (name == "九道镖") then
                    local val = v.Val or {0}
                    if (math.random(1, 100) <= val[1]) then
                        onTowerAttackTtg(u, name)
                        local txy =
                            math.polarProjection(
                            cj.GetUnitX(u),
                            cj.GetUnitY(u),
                            800,
                            math.getDegBetweenUnit(u, targetUnit)
                        )
                        hskill.leapPow(
                            {
                                qty = val[2],
                                deg = 12.5,
                                sourceUnit = u,
                                x = txy.x,
                                y = txy.y,
                                speed = 15,
                                acceleration = 0.2,
                                filter = function()
                                    return his.alive(cj.GetFilterUnit()) and his.enemy(cj.GetFilterUnit(), u)
                                end,
                                tokenArrow = val[6],
                                tokenArrowScale = 1.50,
                                tokenArrowOpacity = 1,
                                damageMovement = val[3],
                                damageMovementRange = 75,
                                damageKind = CONST_DAMAGE_KIND.special,
                                damageType = {CONST_DAMAGE_TYPE.physical, CONST_DAMAGE_TYPE.poison},
                                damageEffect = "Abilities\\Spells\\NightElf\\shadowstrike\\shadowstrike.mdl",
                                extraInfluence = function(eu)
                                    hattr.set(
                                        eu,
                                        val[5],
                                        {
                                            life_back = "-" .. val[4]
                                        }
                                    )
                                end
                            }
                        )
                    end
                elseif (name == "剑气" or name == "弹刃之剑") then
                    local val = v.Val or {0}
                    if (math.random(1, 100) <= val[1]) then
                        onTowerAttackTtg(u, name)
                        local txy =
                            math.polarProjection(
                            cj.GetUnitX(u),
                            cj.GetUnitY(u),
                            1200,
                            math.getDegBetweenUnit(u, targetUnit)
                        )
                        hskill.leapPow(
                            {
                                qty = val[2],
                                deg = 26,
                                sourceUnit = u,
                                x = txy.x,
                                y = txy.y,
                                speed = 20,
                                acceleration = -0.15,
                                filter = function()
                                    return his.alive(cj.GetFilterUnit()) and his.enemy(cj.GetFilterUnit(), u)
                                end,
                                tokenArrow = val[6],
                                tokenArrowScale = 1.00,
                                tokenArrowOpacity = 1,
                                damageMovement = val[3],
                                damageMovementRange = 75,
                                damageKind = CONST_DAMAGE_KIND.skill,
                                damageType = {CONST_DAMAGE_TYPE.physical},
                                damageEffect = "war3mapImported\\eff_speed_slash2.mdl",
                                extraInfluence = function(eu)
                                    hattr.set(
                                        eu,
                                        val[5],
                                        {
                                            defend = "-" .. val[4]
                                        }
                                    )
                                end
                            }
                        )
                    end
                elseif (name == "神剑七闪") then
                    local val = v.Val or {0}
                    if (math.random(1, 100) <= val[1]) then
                        onTowerAttackTtg(u, name)
                        local txy =
                            math.polarProjection(
                            cj.GetUnitX(u),
                            cj.GetUnitY(u),
                            1200,
                            math.getDegBetweenUnit(u, targetUnit)
                        )
                        hskill.leapPow(
                            {
                                qty = val[2],
                                deg = 17,
                                sourceUnit = u,
                                x = txy.x,
                                y = txy.y,
                                speed = 12,
                                acceleration = 0,
                                filter = function()
                                    return his.alive(cj.GetFilterUnit()) and his.enemy(cj.GetFilterUnit(), u)
                                end,
                                tokenArrow = val[6],
                                tokenArrowScale = 1.00,
                                tokenArrowOpacity = 1,
                                damageMovement = val[3],
                                damageMovementRange = 100,
                                damageMovementRepeat = true,
                                damageKind = CONST_DAMAGE_KIND.skill,
                                damageType = {CONST_DAMAGE_TYPE.physical, CONST_DAMAGE_TYPE.fire},
                                damageEffect = "war3mapImported\\eff_shooting.mdl",
                                extraInfluence = function(eu)
                                    hattr.set(
                                        eu,
                                        val[5],
                                        {
                                            move = "-" .. val[4]
                                        }
                                    )
                                end
                            }
                        )
                    end
                elseif (name == "冥王极限斩") then
                    local val = v.Val or {0}
                    if (math.random(1, 100) <= val[1]) then
                        onTowerAttackTtg(u, name)
                        local txy =
                            math.polarProjection(
                            cj.GetUnitX(u),
                            cj.GetUnitY(u),
                            1500,
                            math.getDegBetweenUnit(u, targetUnit)
                        )
                        hskill.leap(
                            {
                                sourceUnit = u,
                                x = txy.x,
                                y = txy.y,
                                speed = 14,
                                acceleration = 0,
                                filter = function()
                                    return his.alive(cj.GetFilterUnit()) and his.enemy(cj.GetFilterUnit(), u)
                                end,
                                tokenArrow = val[3],
                                tokenArrowScale = 1.70,
                                tokenArrowOpacity = 1,
                                damageMovement = val[2],
                                damageMovementRange = 150,
                                damageKind = CONST_DAMAGE_KIND.skill,
                                damageType = {CONST_DAMAGE_TYPE.poison},
                                damageEffect = "war3mapImported\\eff_Pillar_of_Flame_Green.mdl"
                            }
                        )
                    end
                elseif (name == "陨石星P") then
                    local val = v.Val or {0}
                    if (math.random(1, 100) <= val[1]) then
                        onTowerAttackTtg(u, name)
                        local txy =
                            math.polarProjection(
                            cj.GetUnitX(u),
                            cj.GetUnitY(u),
                            1200,
                            math.getDegBetweenUnit(u, targetUnit)
                        )
                        hskill.leap(
                            {
                                sourceUnit = u,
                                x = txy.x,
                                y = txy.y,
                                speed = 8,
                                acceleration = 0,
                                filter = function()
                                    return his.alive(cj.GetFilterUnit()) and his.enemy(cj.GetFilterUnit(), u)
                                end,
                                tokenArrow = val[3],
                                tokenArrowScale = 0.25,
                                tokenArrowOpacity = 1,
                                damageMovement = val[2],
                                damageMovementRange = 150,
                                damageMovementRepeat = true,
                                damageEnd = val[2] * 2,
                                damageEndRange = 350,
                                damageKind = CONST_DAMAGE_KIND.skill,
                                damageType = {CONST_DAMAGE_TYPE.physical, CONST_DAMAGE_TYPE.fire},
                                damageEffect = "war3mapImported\\eff_flame_flash2.mdl"
                            }
                        )
                    end
                elseif (name == "陨石星M") then
                    local val = v.Val or {0}
                    if (math.random(1, 100) <= val[1]) then
                        onTowerAttackTtg(u, name)
                        local txy =
                            math.polarProjection(
                            cj.GetUnitX(u),
                            cj.GetUnitY(u),
                            1200,
                            math.getDegBetweenUnit(u, targetUnit)
                        )
                        hskill.leap(
                            {
                                sourceUnit = u,
                                x = txy.x,
                                y = txy.y,
                                speed = 8,
                                acceleration = 0,
                                filter = function()
                                    return his.alive(cj.GetFilterUnit()) and his.enemy(cj.GetFilterUnit(), u)
                                end,
                                tokenArrow = val[3],
                                tokenArrowScale = 0.25,
                                tokenArrowOpacity = 1,
                                damageMovement = val[2],
                                damageMovementRange = 150,
                                damageMovementRepeat = true,
                                damageEnd = val[2] * 2,
                                damageEndRange = 350,
                                damageKind = CONST_DAMAGE_KIND.skill,
                                damageType = {CONST_DAMAGE_TYPE.magic, CONST_DAMAGE_TYPE.fire},
                                damageEffect = "war3mapImported\\eff_flame_flash2.mdl"
                            }
                        )
                    end
                elseif (name == "虚空漩涡") then
                    local val = v.Val or {0}
                    if (math.random(1, 100) <= val[1]) then
                        onTowerAttackTtg(u, name)
                        local txy =
                            math.polarProjection(
                            cj.GetUnitX(u),
                            cj.GetUnitY(u),
                            1100,
                            math.getDegBetweenUnit(u, targetUnit)
                        )
                        hskill.leap(
                            {
                                sourceUnit = u,
                                x = txy.x,
                                y = txy.y,
                                speed = 4,
                                acceleration = 0,
                                filter = function()
                                    return his.alive(cj.GetFilterUnit()) and his.enemy(cj.GetFilterUnit(), u)
                                end,
                                tokenArrow = val[3],
                                tokenArrowScale = 1.8,
                                tokenArrowOpacity = 1,
                                damageMovement = val[2],
                                damageMovementRange = 275,
                                damageMovementRepeat = true,
                                damageEnd = 0,
                                damageEndRange = 0,
                                damageKind = CONST_DAMAGE_KIND.skill,
                                damageType = {CONST_DAMAGE_TYPE.absolute, CONST_DAMAGE_TYPE.dark},
                                damageEffect = "Abilities\\Spells\\Undead\\DeathandDecay\\DeathandDecayTarget.mdl",
                                extraInfluence = function(eu)
                                    hattr.set(
                                        eu,
                                        4,
                                        {
                                            move = "-15"
                                        }
                                    )
                                end
                            }
                        )
                    end
                elseif (name == "爆骨火弹" or name == "炎杀鬼球") then
                    local val = v.Val or {0}
                    if (math.random(1, 100) <= val[1]) then
                        onTowerAttackTtg(u, name)
                        hskill.leap(
                            {
                                sourceUnit = u,
                                targetUnit = targetUnit,
                                speed = 16,
                                acceleration = 0,
                                filter = function()
                                    return his.alive(cj.GetFilterUnit()) and his.enemy(cj.GetFilterUnit(), u)
                                end,
                                tokenArrow = "war3mapImported\\eff_Firebolt_Major.mdl",
                                tokenArrowScale = 1.00,
                                tokenArrowOpacity = 1,
                                tokenArrowHeight = 100,
                                damageMovement = 0,
                                damageMovementRange = 100,
                                damageEnd = val[3],
                                damageEndRange = val[2],
                                effectEnd = "war3mapImported\\eff_FireStomp.mdl",
                                damageKind = CONST_DAMAGE_KIND.skill,
                                damageType = {CONST_DAMAGE_TYPE.physical, CONST_DAMAGE_TYPE.fire},
                                damageEffect = "Abilities\\Spells\\Other\\Incinerate\\FireLordDeathExplode.mdl"
                            }
                        )
                    end
                elseif (name == "地狱火球") then
                    local val = v.Val or {0}
                    onTowerAttackTtg(u, name)
                    hskill.leap(
                        {
                            sourceUnit = u,
                            targetUnit = targetUnit,
                            speed = 15,
                            acceleration = 0,
                            filter = function()
                                return his.alive(cj.GetFilterUnit()) and his.enemy(cj.GetFilterUnit(), u)
                            end,
                            tokenArrow = "war3mapImported\\eff_DarknessBomb.mdl",
                            tokenArrowScale = 1.30,
                            tokenArrowOpacity = 1,
                            tokenArrowHeight = 100,
                            damageMovement = 0,
                            damageMovementRange = 0,
                            damageEnd = val[1],
                            damageEndRange = 0,
                            effectEnd = "war3mapImported\\eff_ShadowAssault.mdl",
                            damageKind = CONST_DAMAGE_KIND.skill,
                            damageType = {CONST_DAMAGE_TYPE.magic, CONST_DAMAGE_TYPE.dark}
                        }
                    )
                elseif (name == "炫力炸弹") then
                    local val = v.Val or {0}
                    if (math.random(1, 100) <= val[1]) then
                        onTowerAttackTtg(u, name)
                        hskill.leap(
                            {
                                sourceUnit = u,
                                targetUnit = targetUnit,
                                speed = 11,
                                acceleration = 0,
                                filter = function()
                                    return his.alive(cj.GetFilterUnit()) and his.enemy(cj.GetFilterUnit(), u)
                                end,
                                tokenArrow = "Abilities\\Spells\\Other\\AcidBomb\\BottleMissile.mdl",
                                tokenArrowScale = 1.50,
                                tokenArrowOpacity = 1,
                                tokenArrowHeight = 75,
                                damageMovement = 0,
                                damageMovementRange = 0,
                                damageEnd = val[3],
                                damageEndRange = val[2],
                                effectEnd = "war3mapImported\\eff_BombBlast.mdl",
                                damageKind = CONST_DAMAGE_KIND.skill,
                                damageType = {CONST_DAMAGE_TYPE.magic, CONST_DAMAGE_TYPE.poison},
                                damageEffect = "war3mapImported\\eff_brilliant_sparkle.mdl",
                                extraInfluence = function(eu)
                                    hskill.swim(
                                        {
                                            odds = 100,
                                            whichUnit = eu,
                                            during = val[4]
                                        }
                                    )
                                end
                            }
                        )
                    end
                elseif (name == "恐惧蝠群") then
                    local val = v.Val or {0}
                    if (math.random(1, 100) <= val[1]) then
                        onTowerAttackTtg(u, name)
                        hskill.leapRange(
                            {
                                targetRange = 700,
                                sourceUnit = u,
                                targetUnit = targetUnit,
                                speed = 15,
                                acceleration = 1,
                                filter = function()
                                    return his.alive(cj.GetFilterUnit()) and his.enemy(cj.GetFilterUnit(), u)
                                end,
                                tokenArrow = val[6],
                                tokenArrowScale = 1.00,
                                tokenArrowOpacity = 1,
                                tokenArrowHeight = 100,
                                damageMovement = 0,
                                damageMovementRange = 0,
                                damageEnd = val[3],
                                damageEndRange = 0,
                                effectEnd = "war3mapImported\\eff_Call_of_Dread_Green.mdl",
                                damageKind = CONST_DAMAGE_KIND.skill,
                                damageType = {CONST_DAMAGE_TYPE.magic, CONST_DAMAGE_TYPE.dark},
                                extraInfluence = function(eu)
                                    hattr.set(
                                        eu,
                                        0,
                                        {
                                            defend = "-" .. val[4],
                                            move = "-" .. val[5]
                                        }
                                    )
                                end
                            }
                        )
                    end
                elseif (name == "导弹降日") then
                    local val = v.Val or {0}
                    if (math.random(1, 100) <= val[1]) then
                        onTowerAttackTtg(u, name)
                        heffect.toUnit("war3mapImported\\eff_RocketRainBirth.mdl", u, 0)
                        hskill.leapRange(
                            {
                                targetRange = 895,
                                sourceUnit = u,
                                targetUnit = targetUnit,
                                speed = 8,
                                acceleration = 1.5,
                                filter = function()
                                    return his.alive(cj.GetFilterUnit()) and his.enemy(cj.GetFilterUnit(), u)
                                end,
                                tokenArrow = "Abilities\\Spells\\Other\\TinkerRocket\\TinkerRocketMissile.mdl",
                                tokenArrowScale = 1.60,
                                tokenArrowOpacity = 1,
                                tokenArrowHeight = 100,
                                damageMovement = 0,
                                damageMovementRange = 0,
                                damageEnd = val[2],
                                damageEndRange = 150,
                                effectEnd = "war3mapImported\\eff_ExplosionBig.mdl",
                                damageKind = CONST_DAMAGE_KIND.skill,
                                damageType = {CONST_DAMAGE_TYPE.physical, CONST_DAMAGE_TYPE.fire}
                            }
                        )
                    end
                elseif (name == "滚滚石锤") then
                    local val = v.Val or {0}
                    if (math.random(1, 100) <= val[1]) then
                        onTowerAttackTtg(u, name)
                        hskill.leapRange(
                            {
                                targetRange = 895,
                                sourceUnit = u,
                                targetUnit = targetUnit,
                                speed = 13,
                                acceleration = 0,
                                filter = function()
                                    return his.alive(cj.GetFilterUnit()) and his.enemy(cj.GetFilterUnit(), u)
                                end,
                                tokenArrow = "Abilities\\Weapons\\AncientProtectorMissile\\AncientProtectorMissile.mdl",
                                tokenArrowScale = 1.60,
                                tokenArrowOpacity = 1,
                                tokenArrowHeight = 100,
                                damageMovement = 0,
                                damageMovementRange = 0,
                                damageEnd = val[2],
                                damageEndRange = 0,
                                effectEnd = "Objects\\Spawnmodels\\Undead\\ImpaleTargetDust\\ImpaleTargetDust.mdl",
                                damageKind = CONST_DAMAGE_KIND.skill,
                                damageType = {CONST_DAMAGE_TYPE.physical, CONST_DAMAGE_TYPE.soil},
                                extraInfluence = function(eu)
                                    hskill.swim(
                                        {
                                            odds = 100,
                                            whichUnit = eu,
                                            during = val[3]
                                        }
                                    )
                                end
                            }
                        )
                    end
                elseif (name == "破冰碎片") then
                    local val = v.Val or {0}
                    if (math.random(1, 100) <= val[1]) then
                        onTowerAttackTtg(u, name)
                        hskill.leapRange(
                            {
                                targetRange = val[2],
                                sourceUnit = u,
                                targetUnit = u,
                                speed = 18,
                                acceleration = 0,
                                filter = function()
                                    return his.alive(cj.GetFilterUnit()) and his.enemy(cj.GetFilterUnit(), u)
                                end,
                                tokenArrow = "war3mapImported\\eff_forst_arrow.mdl",
                                tokenArrowScale = 1.10,
                                tokenArrowOpacity = 1,
                                tokenArrowHeight = 100,
                                damageMovement = 0,
                                damageMovementRange = 0,
                                damageEnd = val[3],
                                damageEndRange = 0,
                                effectEnd = "Abilities\\Spells\\Undead\\FrostNova\\FrostNovaTarget.mdl",
                                damageKind = CONST_DAMAGE_KIND.skill,
                                damageType = {CONST_DAMAGE_TYPE.physical, CONST_DAMAGE_TYPE.ice}
                            }
                        )
                    end
                elseif (name == "黑网擒拿" or name == "忍法擒拿") then
                    local val = v.Val or {0}
                    if (math.random(1, 100) <= val[1]) then
                        onTowerAttackTtg(u, name)
                        hskill.leapRange(
                            {
                                targetRange = 700,
                                sourceUnit = u,
                                targetUnit = targetUnit,
                                speed = 18,
                                acceleration = -0.25,
                                filter = function()
                                    return his.alive(cj.GetFilterUnit()) and his.enemy(cj.GetFilterUnit(), u)
                                end,
                                tokenArrow = val[4],
                                tokenArrowScale = 1.10,
                                tokenArrowOpacity = 1,
                                tokenArrowHeight = 100,
                                damageMovement = 0,
                                damageMovementRange = 0,
                                damageEnd = val[2],
                                damageEndRange = 0,
                                damageKind = CONST_DAMAGE_KIND.skill,
                                damageType = {CONST_DAMAGE_TYPE.physical, CONST_DAMAGE_TYPE.dark},
                                extraInfluence = function(eu)
                                    heffect.bindUnit(val[5], eu, "origin", val[3])
                                    hattr.set(
                                        eu,
                                        val[3],
                                        {
                                            move = "-522"
                                        }
                                    )
                                end
                            }
                        )
                    end
                elseif (name == "幻彩星落") then
                    local val = v.Val or {0}
                    if (math.random(1, 100) <= val[1]) then
                        onTowerAttackTtg(u, name)
                        hskill.leapReflex(
                            {
                                qty = val[2],
                                range = 600,
                                sourceUnit = u,
                                targetUnit = targetUnit,
                                speed = 17,
                                acceleration = 0,
                                filter = function()
                                    return his.alive(cj.GetFilterUnit()) and his.enemy(cj.GetFilterUnit(), u)
                                end,
                                tokenArrow = "war3mapImported\\eff_FaerieFire_Impact.mdl",
                                tokenArrowScale = 1.20,
                                tokenArrowOpacity = 1,
                                tokenArrowHeight = 100,
                                damageMovement = 0,
                                damageMovementRange = 0,
                                damageEnd = val[3],
                                damageEndRange = 0,
                                effectEnd = "Abilities\\Spells\\NightElf\\Starfall\\StarfallTarget.mdl",
                                damageKind = CONST_DAMAGE_KIND.skill,
                                damageType = {CONST_DAMAGE_TYPE.magic, CONST_DAMAGE_TYPE.light}
                            }
                        )
                    end
                elseif (name == "金箍棒") then
                    local val = v.Val or {0}
                    if (math.random(1, 100) <= val[1]) then
                        onTowerAttackTtg(u, name)
                        hskill.rectangleStrike(
                            {
                                damage = val[3],
                                sourceUnit = u,
                                x = cj.GetUnitX(u),
                                y = cj.GetUnitY(u),
                                deg = math.getDegBetweenXY(
                                    cj.GetUnitX(u),
                                    cj.GetUnitY(u),
                                    cj.GetUnitX(targetUnit),
                                    cj.GetUnitY(targetUnit)
                                ),
                                range = 250,
                                distance = val[2],
                                frequency = 0,
                                filter = function()
                                    return his.alive(cj.GetFilterUnit()) and his.enemy(cj.GetFilterUnit(), u)
                                end,
                                effect = "war3mapImported\\eff_slash.mdl",
                                effectScale = 3,
                                effectOffset = -750,
                                damageKind = CONST_DAMAGE_KIND.skill,
                                damageType = {CONST_DAMAGE_TYPE.physical},
                                damageEffect = "war3mapImported\\eff_red_swing.mdl",
                                oneHitOnly = true, --是否每个敌人只打击一次（可选,默认true）
                                extraInfluence = function(eu)
                                    hskill.swim(
                                        {
                                            odds = 100,
                                            whichUnit = eu,
                                            during = val[4]
                                        }
                                    )
                                end
                            }
                        )
                    end
                elseif (name == "蛇棒" or name == "骷髅兵" or name == "炎魔" or name == "灰熊") then
                    local val = v.Val or {0}
                    if (math.random(1, 100) <= val[1]) then
                        onTowerAttackTtg(u, name)
                        local summon = game.towersSummon[val[2]]
                        if (summon == nil) then
                            return
                        end
                        local su =
                            hunit.create(
                            {
                                whichPlayer = cj.GetOwningPlayer(u),
                                unitId = summon.UNIT_ID,
                                qty = 1,
                                life = val[3],
                                x = cj.GetUnitX(targetUnit),
                                y = cj.GetUnitY(targetUnit)
                            }
                        )
                        hattr.set(
                            su,
                            0,
                            {
                                attack_white = "=" .. val[4] * 0.01 * hattr.get(u, "attack_white"),
                                attack_green = "=" .. val[4] * 0.01 * hattr.get(u, "attack_green")
                            }
                        )
                    end
                end
                if (name == "地狱战吼" or name == "邪鬼战吼" or name == "大梵天") then
                    local val = v.Val or {0}
                    if (math.random(1, 100) <= val[1]) then
                        onTowerAttackTtg(u, name)
                        heffect.toUnit(val[4], u, 0)
                        local playerIndex = hplayer.index(cj.GetOwningPlayer(u))
                        hattr.set(
                            game.playerTower[playerIndex],
                            val[3],
                            {
                                [val[5]] = "+" .. val[2]
                            }
                        )
                        for i = 1, 4, 1 do
                            if (his.locust(game.playerTowerLink[playerIndex][i].unit) == false) then
                                hattr.set(
                                    game.playerTowerLink[playerIndex][i].unit,
                                    val[3],
                                    {
                                        [val[5]] = "+" .. val[2]
                                    }
                                )
                            end
                        end
                    end
                elseif (name == "熊咆") then
                    local val = v.Val or {0}
                    if (math.random(1, 100) <= val[1]) then
                        onTowerAttackTtg(u, name)
                        heffect.toUnit(val[5], u, 0)
                        local playerIndex = hplayer.index(cj.GetOwningPlayer(u))
                        hattr.set(
                            game.playerTower[playerIndex],
                            val[4],
                            {
                                attack_effect = {
                                    add = {
                                        {
                                            attr = "knocking",
                                            odds = val[2],
                                            percent = val[3]
                                        }
                                    }
                                }
                            }
                        )
                        for i = 1, 4, 1 do
                            if (his.locust(game.playerTowerLink[playerIndex][i].unit) == false) then
                                hattr.set(
                                    game.playerTowerLink[playerIndex][i].unit,
                                    val[4],
                                    {
                                        attack_effect = {
                                            add = {
                                                {
                                                    attr = "knocking",
                                                    odds = val[2],
                                                    percent = val[3]
                                                }
                                            }
                                        }
                                    }
                                )
                            end
                        end
                    end
                end
                if (name == "固化时空") then
                    local val = v.Val or {0}
                    if (math.random(1, 100) <= val[1]) then
                        onTowerAttackTtg(u, name)
                        hunit.setAnimateSpeed(targetUnit, 0, val[2])
                        hattr.set(
                            targetUnit,
                            val[2],
                            {
                                move = "-522"
                            }
                        )
                    end
                end
                if (name == "血性") then
                    local val = v.Val or {0}
                    if (math.random(1, 100) <= val[1]) then
                        onTowerAttackTtg(u, name)
                        hattr.set(
                            u,
                            val[4],
                            {
                                attack_effect = {
                                    add = {
                                        {
                                            attr = "knocking",
                                            odds = val[2],
                                            percent = val[3],
                                            effect = val[5]
                                        }
                                    }
                                }
                            }
                        )
                    end
                end
            end
        end
    end
end
subTowerLevel = function(playerIndex)
    local oldLevel = game.playerTowerLevel[playerIndex]
    if (oldLevel ~= nil) then
        hskill.del(game.playerTower[playerIndex], game.thisUnitLevelAbilities[oldLevel].ABILITY_ID, 0)
        if (oldLevel > 0) then
            local towerId = hunit.getId(game.playerTower[playerIndex])
            hattr.set(
                game.playerTower[playerIndex],
                0,
                {
                    str_white = "-" .. math.floor(oldLevel * 0.25 * hslk_global.unitsKV[towerId].STR),
                    agi_white = "-" .. math.floor(oldLevel * 0.25 * hslk_global.unitsKV[towerId].AGI),
                    int_white = "-" .. math.floor(oldLevel * 0.25 * hslk_global.unitsKV[towerId].INT),
                    attack_white = "-" .. math.floor(oldLevel * 0.3 * hslk_global.unitsKV[towerId].ATTACK_WHITE)
                }
            )
        end
        game.playerTowerLevel[playerIndex] = 0
    end
end
addTowerLevel = function(playerIndex, lockLv)
    local unitLv = 0
    if (lockLv ~= nil) then
        unitLv = lockLv
    else
        if (math.random(1, 7) == 1) then
            unitLv = 0
        elseif (math.random(1, 6) == 1) then
            unitLv = 1
        elseif (math.random(1, 5) == 1) then
            unitLv = 2
        elseif (math.random(1, 4) == 1) then
            unitLv = 3
        elseif (math.random(1, 3) == 1) then
            unitLv = 4
        elseif (math.random(1, 2) == 1) then
            unitLv = 5
        elseif (math.random(1, 2) == 2) then
            unitLv = 6
        elseif (math.random(1, 2) == 1) then
            unitLv = 7
        elseif (math.random(1, 2) == 2) then
            unitLv = 8
        else
            unitLv = 9
        end
    end
    hskill.add(game.playerTower[playerIndex], game.thisUnitLevelAbilities[unitLv].ABILITY_ID, 0)
    game.playerTowerLevel[playerIndex] = unitLv
    if (lockLv == nil) then
        hmsg.echo00(hplayer.players[playerIndex], "新鉴定兵塔天赋是：" .. hColor.yellow(unitLv) .. "级")
        if (unitLv == 9) then
            hsound.sound2Player(cg.gg_snd_jsws, hplayer.players[playerIndex])
            hmsg.echo(
                hColor.sky("(>▽<)" .. cj.GetPlayerName(hplayer.players[playerIndex])) ..
                    "得到了" .. hColor.yellow(unitLv) .. "级天赋兵塔，大家祝贺TA！"
            )
        end
    end
    --计算
    if (unitLv > 0) then
        local towerId = hunit.getId(game.playerTower[playerIndex])
        hattr.set(
            game.playerTower[playerIndex],
            0,
            {
                str_white = "+" .. math.floor(unitLv * 0.25 * hslk_global.unitsKV[towerId].STR),
                agi_white = "+" .. math.floor(unitLv * 0.25 * hslk_global.unitsKV[towerId].AGI),
                int_white = "+" .. math.floor(unitLv * 0.25 * hslk_global.unitsKV[towerId].INT),
                attack_white = "+" .. math.floor(unitLv * 0.3 * hslk_global.unitsKV[towerId].ATTACK_WHITE)
            }
        )
    end
end
onTowerDead = function(evtData)
    local u = evtData.triggerUnit
    local index = hplayer.index(cj.GetOwningPlayer(u))
    hmark.create("war3mapImported\\mark_defeat.blp", 4.00, hplayer.players[index])
    hsound.sound(cg.gg_snd_tluo)
    hplayer.setStatus(hplayer.players[index], "战败")
    hplayer.clearUnit(hplayer.players[index])
    local czb =
        hunit.create(
        {
            register = false,
            whichPlayer = cj.GetOwningPlayer(u),
            unitId = game.couriers_defeat,
            x = game.towerPoint[index][1],
            y = game.towerPoint[index][2]
        }
    )
    --锤子兵AI
    MAYBE_AI.hammer(czb)
    --检查是否胜利
    local isWin = 0
    local winner
    hplayer.loop(
        function(p, pi)
            if (hplayer.getStatus(p) == hplayer.player_status.gaming) then
                isWin = isWin + 1
                winner = p
            end
        end
    )
    if (isWin == 1) then
        game.runing = false
        dzSetPrestige(winner, false, true)
        hmark.create("war3mapImported\\mark_win.blp", 4.00, winner)
        hplayer.setStatus(winner, "胜利")
        htime.setTimeout(
            10.00,
            function(t, td)
                htime.delDialog(td)
                htime.delTimer(t)
                for i = 1, hplayer.qty_max, 1 do
                    if (hplayer.players[i] == winner) then
                        hplayer.victory(winner)
                    else
                        hplayer.defeat(hplayer.players[i], "战败~")
                    end
                end
            end
        )
    end
end
onTowerLinkSkillUesd = function(evtData)
    local u = evtData.triggerUnit
    local skillid = evtData.triggerSkill
    local abilitiesSLK = hslk_global.abilitiesKV[skillid]
    if (abilitiesSLK == nil) then
        return
    end
    local p = cj.GetOwningPlayer(u)
    local playerIndex = hplayer.index(p)
    if (abilitiesSLK.Name == "上场") then
        local linkIndex = hunit.getUserData(u)
        local linkTowerId = game.playerTowerLink[playerIndex][linkIndex].tower_id
        local linkTowerLevel = game.playerTowerLink[playerIndex][linkIndex].tower_level
        local currentTowerId = hunit.getId(game.playerTower[playerIndex])
        local currentTowerLevel = game.playerTowerLevel[playerIndex]
        --换兵塔
        createMyTower(playerIndex, linkTowerId, linkTowerLevel)
        --进核心
        createMyTowerLink(playerIndex, linkIndex, currentTowerId, currentTowerLevel)
        --刷新种族队伍
        addTowerSkillsRaceTeam(playerIndex)
        --
        hmsg.echo00(p, hColor.yellow(hunit.getName(u)) .. "上场了！")
    end
end
addTowerSkillsRaceAbility = {}
addTowerSkillsRaceAttr = {}
addTowerSkillsRaceAttrStack = 0
addTowerSkillsRaceAttrClock = 0.3
addTowerSkillsRaceAttrPlayer = {}
handleTowerSkillsRaceAttr = function(old, new)
    if (new == nil) then
        return
    end
    local tempDiff = {
        add = {},
        sub = {}
    }
    local tempNew = {}
    for k, v in pairs(new) do
        if (k == "attack_damage_type") then
            if (#v > 0) then
                tempNew[k] = "+" .. string.implode(",", v)
                if (old ~= nil) then
                    if (old[k] == nil or #old[k] == 0) then
                        tempDiff.add[k] = "+" .. string.implode(",", v)
                    elseif (old[k] ~= v) then
                        tempDiff.sub[k] = "-" .. string.implode(",", old[k])
                        tempDiff.add[k] = "+" .. string.implode(",", v)
                    end
                end
            else
                if (old ~= nil) then
                    if (old[k] ~= nil and #old[k] > 0) then
                        tempDiff.sub[k] = "-" .. string.implode(",", old[k])
                    end
                end
            end
        elseif (k == "attack_debuff" or k == "attack_effect") then
            if (#v > 0) then
                tempNew[k] = {add = v}
                if (old ~= nil) then
                    if (old[k] == nil or #old[k] == 0) then
                        tempDiff.add[k] = {add = v}
                    elseif (old[k] ~= v) then
                        tempDiff.sub[k] = {sub = old[k]}
                        tempDiff.add[k] = {add = v}
                    end
                end
            else
                if (old ~= nil) then
                    if (old[k] ~= nil and #old[k] > 0) then
                        tempDiff.sub[k] = {sub = old[k]}
                    end
                end
            end
        else
            if (v > 0) then
                tempNew[k] = "+" .. v
                if (old ~= nil) then
                    if (old[k] == nil) then
                        tempDiff.add[k] = "+" .. v
                    elseif (old[k] ~= v) then
                        v = v - old[k]
                        if (v > 0) then
                            tempDiff.add[k] = "+" .. v
                        else
                            tempDiff.sub[k] = "-" .. math.abs(v)
                        end
                    end
                end
            else
                if (old ~= nil) then
                    if (old[k] ~= nil and old[k] ~= 0) then
                        tempDiff.sub[k] = "-" .. old[k]
                    end
                end
            end
        end
    end
    return {
        diff = tempDiff,
        new = tempNew
    }
end
addTowerSkillsRaceSingleAttr = function(u)
    local currentId = hunit.getId(u)
    local slk = hslk_global.unitsKV[currentId]
    if (slk == nil) then
        return
    end
    local race = slk.RACE
    if (race == "人类") then
        local val = 0.03
        hattr.set(
            u,
            0,
            {
                str_green = "+" .. (val * slk.STR),
                agi_green = "+" .. (val * slk.AGI),
                int_green = "+" .. (val * slk.INT)
            }
        )
    elseif (race == "人杰") then
        local val = 0.04
        hattr.set(
            u,
            0,
            {
                str_green = "+" .. (val * slk.STR),
                agi_green = "+" .. (val * slk.AGI),
                int_green = "+" .. (val * slk.INT)
            }
        )
    elseif (race == "人王") then
        local val = 0.05
        hattr.set(
            u,
            0,
            {
                str_green = "+" .. (val * slk.STR),
                agi_green = "+" .. (val * slk.AGI),
                int_green = "+" .. (val * slk.INT)
            }
        )
    elseif (race == "矮人") then
        hattr.set(
            u,
            0,
            {
                aim = "+40"
            }
        )
    elseif (race == "血精灵") then
        hattr.set(
            u,
            0,
            {
                attack_effect = {
                    add = {
                        {
                            attr = "violence",
                            odds = 15,
                            percent = 12
                        }
                    }
                }
            }
        )
    elseif (race == "兽人") then
        hattr.set(
            u,
            0,
            {
                attack_white = "+" .. (0.075 * slk.ATTACK_WHITE)
            }
        )
    elseif (race == "巨魔") then
        hattr.set(
            u,
            0,
            {
                attack_buff = {
                    add = {
                        {attr = "attack_speed", odds = 100, val = 7.5, during = 5}
                    }
                }
            }
        )
    elseif (race == "牛头人") then
        hattr.set(
            u,
            0,
            {
                attack_effect = {
                    add = {
                        {
                            attr = "knocking",
                            odds = 10,
                            percent = 25
                        }
                    }
                }
            }
        )
    elseif (race == "暗夜精灵") then
        hattr.set(
            u,
            0,
            {
                attack_damage_type = "+dark"
            }
        )
    elseif (race == "德鲁伊") then
        hattr.set(
            u,
            0,
            {
                attack_damage_type = "+wood"
            }
        )
    elseif (race == "亡灵") then
        hattr.set(
            u,
            0,
            {
                attack_damage_type = "+ice",
                attack_debuff = {
                    add = {
                        {
                            attr = "move",
                            odds = 100,
                            val = 30,
                            during = 3.0,
                            effect = "Abilities\\Spells\\Other\\FrostDamage\\FrostDamage.mdl"
                        }
                    }
                }
            }
        )
    elseif (race == "娜迦") then
        hattr.set(
            u,
            0,
            {
                attack_damage_type = "+water",
                natural_fire_oppose = "+30"
            }
        )
    elseif (race == "元素") then
        local vv = "+10"
        hattr.set(
            u,
            0,
            {
                natural_fire_oppose = vv,
                natural_soil_oppose = vv,
                natural_water_oppose = vv,
                natural_ice_oppose = vv,
                natural_wind_oppose = vv,
                natural_light_oppose = vv,
                natural_dark_oppose = vv,
                natural_wood_oppose = vv,
                natural_thunder_oppose = vv,
                natural_poison_oppose = vv,
                natural_ghost_oppose = vv,
                natural_metal_oppose = vv,
                natural_dragon_oppose = vv,
                natural_insect_oppose = vv,
                natural_god_oppose = vv
            }
        )
    elseif (race == "恶魔") then
        hattr.set(
            u,
            0,
            {
                damage_extent = "+6.66",
                attack_speed = "+6.66",
                natural_god_oppose = "-66.66"
            }
        )
    elseif (race == "神族") then
        hattr.set(
            u,
            0,
            {
                attack_damage_type = "+god"
            }
        )
    elseif (race == "昆虫") then
        hattr.set(
            u,
            0,
            {
                attack_damage_type = "+insect"
            }
        )
    elseif (race == "异兽") then
        hattr.set(
            u,
            0,
            {
                resistance = "+15",
                toughness = "+1000"
            }
        )
    elseif (race == "幽魂") then
        hattr.set(
            u,
            0,
            {
                attack_damage_type = "+ghost"
            }
        )
    elseif (race == "食人魔") then
        hattr.set(
            u,
            0,
            {
                attack_effect = {
                    add = {
                        {attr = "swim", odds = 10, val = 0, during = 0.3}
                    }
                }
            }
        )
    elseif (race == "地精") then
        hattr.set(
            u,
            0,
            {
                int_green = "+" .. (0.15 * slk.INT)
            }
        )
    elseif (race == "龙人") then
        hattr.set(
            u,
            0,
            {
                attack_damage_type = "+dragon"
            }
        )
    elseif (race == "熊猫") then
        hattr.set(
            u,
            0,
            {
                life_back = "+0.5",
                str_green = "+" .. (0.08 * slk.STR)
            }
        )
    end
end
--全体种族
addTowerSkillsRaceTeam = function(playerIndex)
    local towers = {
        game.playerTower[playerIndex]
    }
    for i = 1, 4 do
        if
            (game.playerTowerLink[playerIndex] ~= nil and game.playerTowerLink[playerIndex][i] ~= nil and
                game.playerTowerLink[playerIndex][i].tower_level ~= nil)
         then
            table.insert(towers, game.playerTowerLink[playerIndex][i].unit)
        end
    end
    local qtys = {}
    local races = {}
    local attr = {
        life = 0,
        attack_green = 0,
        attack_speed = 0,
        aim = 0,
        defend = 0,
        resistance = 0,
        toughness = 0,
        avoid = 0,
        damage_extent = 0,
        natural_dark = 0,
        natural_god = 0,
        natural_fire_oppose = 0,
        natural_soil_oppose = 0,
        natural_water_oppose = 0,
        natural_ice_oppose = 0,
        natural_wind_oppose = 0,
        natural_light_oppose = 0,
        natural_dark_oppose = 0,
        natural_wood_oppose = 0,
        natural_thunder_oppose = 0,
        natural_poison_oppose = 0,
        natural_ghost_oppose = 0,
        natural_metal_oppose = 0,
        natural_dragon_oppose = 0,
        natural_insect_oppose = 0,
        natural_god_oppose = 0,
        attack_damage_type = {},
        attack_debuff = {},
        attack_effect = {}
    }
    local attrPlayer = {
        gold_ratio = 0,
        exp_ratio = 0
    }
    for k, v in pairs(towers) do
        local cid = hunit.getId(v)
        local r = hslk_global.unitsKV[cid].RACE
        if (qtys[r] == nil) then
            qtys[r] = 0
        end
        qtys[r] = qtys[r] + 1
        --继承型种族的特殊阶级
        if (r == "人杰") then
            if (qtys["人类"] == nil) then
                qtys["人类"] = 0
            end
            qtys["人类"] = qtys["人类"] + 1
        elseif (r == "人王") then
            if (qtys["人类"] == nil) then
                qtys["人类"] = 0
            end
            if (qtys["人杰"] == nil) then
                qtys["人杰"] = 0
            end
            qtys["人类"] = qtys["人类"] + 1
            qtys["人杰"] = qtys["人杰"] + 1
        end
        races[v] = r
        if (r == "人类") then
            if (qtys[r] == 2) then
                attr.defend = attr.defend + 5
            elseif (qtys[r] == 3) then
                attr.defend = attr.defend + 25
            elseif (qtys[r] == 4) then
                attr.defend = attr.defend + 40
            elseif (qtys[r] == 5) then
                attr.defend = attr.defend + 75
            end
        elseif (r == "人杰") then
            if (qtys[r] == 2) then
                attr.defend = attr.defend + 80
            elseif (qtys[r] == 4) then
                attr.attack_green = attr.attack_green + 300
            end
        elseif (r == "人王") then
            if (qtys[r] == 1) then
                attr.defend = attr.defend + 200
                attr.attack_green = attr.attack_green + 400
            end
        elseif (r == "矮人") then
            if (qtys[r] == 1) then
                attrPlayer.exp_ratio = attrPlayer.exp_ratio + 5
            elseif (qtys[r] == 2) then
                attrPlayer.exp_ratio = attrPlayer.exp_ratio + 7
            elseif (qtys[r] == 4) then
                attrPlayer.exp_ratio = attrPlayer.exp_ratio + 11
            end
        elseif (r == "血精灵") then
            if (qtys[r] == 2) then
                table.insert(
                    attr.attack_effect,
                    {
                        attr = "violence",
                        odds = 15,
                        percent = 18
                    }
                )
            elseif (qtys[r] == 4) then
                table.insert(
                    attr.attack_effect,
                    {
                        attr = "violence",
                        odds = 20,
                        percent = 25
                    }
                )
            elseif (qtys[r] == 5) then
                table.insert(
                    attr.attack_effect,
                    {
                        attr = "violence",
                        odds = 20,
                        percent = 40
                    }
                )
            end
        elseif (r == "兽人") then
            if (qtys[r] == 2) then
                attr.attack_green = attr.attack_green + 35
            elseif (qtys[r] == 3) then
                attr.attack_green = attr.attack_green + 60
            elseif (qtys[r] == 4) then
                attr.attack_green = attr.attack_green + 105
            elseif (qtys[r] == 5) then
                attr.attack_green = attr.attack_green + 175
                table.insert(attr.attack_damage_type, "fire")
            end
        elseif (r == "巨魔") then
            if (qtys[r] == 2) then
                attr.attack_speed = attr.attack_speed + 10
            elseif (qtys[r] == 3) then
                attr.attack_speed = attr.attack_speed + 13
            elseif (qtys[r] == 4) then
                attr.attack_speed = attr.attack_speed + 16
            elseif (qtys[r] == 5) then
                attr.attack_speed = attr.attack_speed + 21
            end
        elseif (r == "牛头人") then
            if (qtys[r] == 2) then
                table.insert(
                    attr.attack_effect,
                    {
                        attr = "knocking",
                        odds = 8,
                        percent = 13
                    }
                )
            elseif (qtys[r] == 3) then
                table.insert(
                    attr.attack_effect,
                    {
                        attr = "knocking",
                        odds = 11,
                        percent = 16
                    }
                )
            elseif (qtys[r] == 4) then
                table.insert(
                    attr.attack_effect,
                    {
                        attr = "knocking",
                        odds = 14,
                        percent = 19
                    }
                )
            elseif (qtys[r] == 5) then
                table.insert(
                    attr.attack_effect,
                    {
                        attr = "knocking",
                        odds = 25,
                        percent = 25
                    }
                )
            end
        elseif (r == "暗夜精灵") then
            if (qtys[r] == 2) then
                attr.natural_dark = attr.natural_dark + 16
            elseif (qtys[r] == 3) then
                table.insert(attr.attack_damage_type, "dark")
            end
        elseif (r == "德鲁伊") then
            if (qtys[r] == 2) then
                attr.attack_speed = attr.attack_speed + 45
            elseif (qtys[r] == 4) then
                attr.attack_speed = attr.attack_speed + 45
                attr.natural_wind_oppose = attr.natural_wind_oppose + 80
            end
        elseif (r == "亡灵") then
            if (qtys[r] == 2) then
                table.insert(
                    attr.attack_debuff,
                    {
                        attr = "move",
                        odds = 100,
                        val = 4,
                        during = 2.5,
                        effect = "Abilities\\Spells\\Other\\FrostDamage\\FrostDamage.mdl"
                    }
                )
            elseif (qtys[r] == 3) then
                table.insert(
                    attr.attack_debuff,
                    {
                        attr = "move",
                        odds = 100,
                        val = 5,
                        during = 3,
                        effect = "Abilities\\Spells\\Other\\FrostDamage\\FrostDamage.mdl"
                    }
                )
            elseif (qtys[r] == 4) then
                table.insert(attr.attack_damage_type, "wind")
            end
        elseif (r == "娜迦") then
            if (qtys[r] == 1) then
                attr.natural_water_oppose = attr.natural_water_oppose + 7
                attr.natural_ice_oppose = attr.natural_ice_oppose + 7
            elseif (qtys[r] == 3) then
                attr.natural_water_oppose = attr.natural_water_oppose + 13
                attr.natural_ice_oppose = attr.natural_ice_oppose + 13
            elseif (qtys[r] == 4) then
                attr.natural_water_oppose = attr.natural_water_oppose + 25
                attr.natural_ice_oppose = attr.natural_ice_oppose + 25
            end
        elseif (r == "元素") then
            if (qtys[r] == 5) then
                local vv = 10
                attr.natural_fire_oppose = attr.natural_fire_oppose + vv
                attr.natural_soil_oppose = attr.natural_soil_oppose + vv
                attr.natural_water_oppose = attr.natural_water_oppose + vv
                attr.natural_ice_oppose = attr.natural_ice_oppose + vv
                attr.natural_wind_oppose = attr.natural_wind_oppose + vv
                attr.natural_light_oppose = attr.natural_light_oppose + vv
                attr.natural_dark_oppose = attr.natural_dark_oppose + vv
                attr.natural_wood_oppose = attr.natural_wood_oppose + vv
                attr.natural_thunder_oppose = attr.natural_thunder_oppose + vv
                attr.natural_poison_oppose = attr.natural_poison_oppose + vv
                attr.natural_ghost_oppose = attr.natural_ghost_oppose + vv
                attr.natural_metal_oppose = attr.natural_metal_oppose + vv
                attr.natural_dragon_oppose = attr.natural_dragon_oppose + vv
                attr.natural_insect_oppose = attr.natural_insect_oppose + vv
                attr.natural_god_oppose = attr.natural_god_oppose + vv
            elseif (qtys[r] == 3) then
                table.insert(attr.attack_damage_type, "dark")
                table.insert(attr.attack_damage_type, "light")
            elseif (qtys[r] == 4) then
                table.insert(attr.attack_damage_type, "fire")
                table.insert(attr.attack_damage_type, "soil")
            elseif (qtys[r] == 5) then
                local vv = 28
                attr.natural_fire_oppose = attr.natural_fire_oppose + vv
                attr.natural_soil_oppose = attr.natural_soil_oppose + vv
                attr.natural_water_oppose = attr.natural_water_oppose + vv
                attr.natural_ice_oppose = attr.natural_ice_oppose + vv
                attr.natural_wind_oppose = attr.natural_wind_oppose + vv
                attr.natural_light_oppose = attr.natural_light_oppose + vv
                attr.natural_dark_oppose = attr.natural_dark_oppose + vv
                attr.natural_wood_oppose = attr.natural_wood_oppose + vv
                attr.natural_thunder_oppose = attr.natural_thunder_oppose + vv
                attr.natural_poison_oppose = attr.natural_poison_oppose + vv
                attr.natural_ghost_oppose = attr.natural_ghost_oppose + vv
                attr.natural_metal_oppose = attr.natural_metal_oppose + vv
                attr.natural_dragon_oppose = attr.natural_dragon_oppose + vv
                attr.natural_insect_oppose = attr.natural_insect_oppose + vv
                attr.natural_god_oppose = attr.natural_god_oppose + vv
            end
        elseif (r == "恶魔") then
            if (qtys[r] == 1) then
                attr.damage_extent = attr.damage_extent + 6.66
            elseif (qtys[r] == 2) then
                attr.damage_extent = attr.damage_extent + 6.66
            elseif (qtys[r] == 3) then
                attr.damage_extent = attr.damage_extent + 6.66
            elseif (qtys[r] == 4) then
                attr.damage_extent = attr.damage_extent + 6.66
            elseif (qtys[r] == 5) then
                attr.damage_extent = attr.damage_extent + 6.66
            end
        elseif (r == "神族") then
            if (qtys[r] == 1) then
                attr.attack_speed = attr.attack_speed + 30
            elseif (qtys[r] == 2) then
                attr.natural_god = attr.natural_god + 30
            elseif (qtys[r] == 3) then
                table.insert(attr.attack_damage_type, "god")
            end
        elseif (r == "昆虫") then
            if (qtys[r] == 1) then
                attr.defend = attr.defend + 50
            elseif (qtys[r] == 2) then
                attr.resistance = attr.resistance + 30
            elseif (qtys[r] == 3) then
                attr.toughness = attr.toughness + 3000
            end
        elseif (r == "异兽") then
            if (qtys[r] == 2) then
                attr.toughness = "+1000"
            elseif (qtys[r] == 3) then
                table.insert(
                    attr.attack_effect,
                    {
                        attr = "split",
                        odds = 100,
                        range = 400,
                        percent = 10
                    }
                )
            elseif (qtys[r] == 4) then
                table.insert(
                    attr.attack_effect,
                    {
                        attr = "split",
                        odds = 100,
                        range = 500,
                        percent = 15
                    }
                )
            end
        elseif (r == "幽魂") then
            if (qtys[r] == 2) then
                attr.avoid = attr.avoid + 10
            elseif (qtys[r] == 2) then
                attr.avoid = attr.avoid + 20
            elseif (qtys[r] == 3) then
                attr.avoid = attr.avoid + 25
            end
        elseif (r == "食人魔") then
            if (qtys[r] == 2) then
                table.insert(
                    attr.attack_effect,
                    {
                        attr = "swim",
                        odds = 10,
                        during = 0.75
                    }
                )
            elseif (qtys[r] == 5) then
                table.insert(
                    attr.attack_effect,
                    {
                        attr = "swim",
                        odds = 20,
                        during = 1.25
                    }
                )
            end
        elseif (r == "地精") then
            if (qtys[r] == 1) then
                attrPlayer.gold_ratio = attrPlayer.gold_ratio + 7
            elseif (qtys[r] == 2) then
                attrPlayer.gold_ratio = attrPlayer.gold_ratio + 10
            elseif (qtys[r] == 3) then
                attrPlayer.gold_ratio = attrPlayer.gold_ratio + 13
            elseif (qtys[r] == 4) then
                attrPlayer.gold_ratio = attrPlayer.gold_ratio + 15
            end
        elseif (r == "龙人") then
            if (qtys[r] == 1) then
                attr.attack_green = attr.attack_green + 1000
            elseif (qtys[r] == 2) then
                table.insert(attr.attack_damage_type, "thunder")
            elseif (qtys[r] == 3) then
                table.insert(attr.attack_damage_type, "wind")
            end
        elseif (r == "熊猫") then
            if (qtys[r] == 1) then
                attr.life = attr.life + 2500
            elseif (qtys[r] == 2) then
                attr.life = attr.life + 5000
            elseif (qtys[r] == 3) then
                attr.life = attr.life + 15000
            elseif (qtys[r] == 4) then
                attr.life = attr.life + 30000
            end
        end
    end
    if (addTowerSkillsRaceAttr[playerIndex] == nil) then
        addTowerSkillsRaceAttr[playerIndex] = {}
        addTowerSkillsRaceAttrPlayer[playerIndex] = {}
    else
        --玩家扣除
        if (addTowerSkillsRaceAttrPlayer[playerIndex].gold_ratio > 0) then
            hplayer.subGoldRatio(hplayer.players[playerIndex], addTowerSkillsRaceAttrPlayer[playerIndex].gold_ratio, 0)
        end
        if (addTowerSkillsRaceAttrPlayer[playerIndex].exp_ratio > 0) then
            hplayer.subExpRatio(hplayer.players[playerIndex], addTowerSkillsRaceAttrPlayer[playerIndex].exp_ratio, 0)
        end
    end
    --整理旧属性
    local mixAttrs = handleTowerSkillsRaceAttr(addTowerSkillsRaceAttr[playerIndex], attr)
    --新旧交替
    addTowerSkillsRaceAttr[playerIndex] = attr
    addTowerSkillsRaceAttrPlayer[playerIndex] = attrPlayer
    attr = nil
    attrPlayer = nil
    --玩家增加
    if (addTowerSkillsRaceAttrPlayer[playerIndex].gold_ratio > 0) then
        hplayer.addGoldRatio(hplayer.players[playerIndex], addTowerSkillsRaceAttrPlayer[playerIndex].gold_ratio, 0)
    end
    if (addTowerSkillsRaceAttrPlayer[playerIndex].exp_ratio > 0) then
        hplayer.addExpRatio(hplayer.players[playerIndex], addTowerSkillsRaceAttrPlayer[playerIndex].exp_ratio, 0)
    end
    if (addTowerSkillsRaceAbility[playerIndex] == nil) then
        addTowerSkillsRaceAbility[playerIndex] = {}
    end
    for k, v in pairs(towers) do
        if (addTowerSkillsRaceAbility[playerIndex][k] ~= nil) then
            hskill.del(v, addTowerSkillsRaceAbility[playerIndex][k], 0)
        end
        local index = races[v] .. qtys[races[v]]
        addTowerSkillsRaceAbility[playerIndex][k] = game.thisUnitRaceAbilities[index].ABILITY_ID
        hskill.add(v, addTowerSkillsRaceAbility[playerIndex][k], 0)
        if (hRuntime.unit[v] == nil) then
            hRuntime.unit[v] = {}
        end
        if (hRuntime.unit[v]["raceTeamInit"] == nil) then
            hRuntime.unit[v]["raceTeamInit"] = 1
            if (table.len(mixAttrs.new) > 0) then
                addTowerSkillsRaceAttrStack = addTowerSkillsRaceAttrStack + addTowerSkillsRaceAttrClock
                htime.setTimeout(
                    addTowerSkillsRaceAttrStack,
                    function(t)
                        htime.delTimer(t)
                        addTowerSkillsRaceAttrStack = addTowerSkillsRaceAttrStack - addTowerSkillsRaceAttrClock
                        if (his.alive(v)) then
                            hattr.set(v, 0, mixAttrs.new)
                        end
                    end
                )
            end
        else
            if (table.len(mixAttrs.diff.add) > 0) then
                addTowerSkillsRaceAttrStack = addTowerSkillsRaceAttrStack + addTowerSkillsRaceAttrClock
                htime.setTimeout(
                    addTowerSkillsRaceAttrStack,
                    function(t)
                        htime.delTimer(t)
                        addTowerSkillsRaceAttrStack = addTowerSkillsRaceAttrStack - addTowerSkillsRaceAttrClock
                        if (his.alive(v)) then
                            hattr.set(v, 0, mixAttrs.diff.add)
                        end
                    end
                )
            end
            if (table.len(mixAttrs.diff.sub) > 0) then
                addTowerSkillsRaceAttrStack = addTowerSkillsRaceAttrStack + addTowerSkillsRaceAttrClock + 0.05
                htime.setTimeout(
                    addTowerSkillsRaceAttrStack,
                    function(t)
                        htime.delTimer(t)
                        addTowerSkillsRaceAttrStack = addTowerSkillsRaceAttrStack - addTowerSkillsRaceAttrClock + 0.05
                        if (his.alive(v)) then
                            hattr.set(v, 0, mixAttrs.diff.sub)
                        end
                    end
                )
            end
        end
    end
    races = nil
end
addTowerSkillsx = function(u)
    for k, v in ipairs(game.towersOriginSkill) do
        local abid = v.ABILITY_ID
        if (abid ~= nil and v.Val ~= nil) then
            local Val = v.Val
            if (hskill.has(u, abid)) then
                local name = v.Name
                if (name == "突击匕首" or name == "月神强击" or name == "魔力之源" or name == "屠龙刀" or name == "利爪") then
                    hattr.set(u, 0, {attack_green = "+" .. Val[1]})
                elseif
                    (name == "巾帼" or name == "剑圣" or name == "气定神闲" or name == "风风拳" or name == "牙牙拳" or name == "电激穴道" or
                        name == "加速")
                 then
                    hattr.set(u, 0, {attack_speed = "+" .. Val[1]})
                elseif (name == "皮糙" or name == "肉厚") then
                    hattr.set(u, 0, {life = "+" .. Val[1]})
                elseif (name == "治疗" or name == "精灵守护") then
                    hattr.set(u, 0, {life_back = "+" .. Val[1]})
                elseif
                    (name == "铁壁" or name == "金甲" or name == "矮人之盾" or name == "捍卫守护" or name == "铁石心肠" or
                        name == "坚硬外皮")
                 then
                    hattr.set(u, 0, {defend = "+" .. Val[1]})
                elseif (name == "国王") then
                    hattr.set(u, 0, {defend = "+" .. Val[1], resistance = "+" .. Val[2]})
                elseif
                    (name == "远古身躯" or name == "牛头人" or name == "重拳出击" or name == "骑士精神" or name == "威武体魄" or
                        name == "落难领袖" or
                        name == "汇聚" or
                        name == "浪涛之力")
                 then
                    hattr.set(u, 0, {str_green = "+" .. Val[1]})
                elseif
                    (name == "蛇皮" or name == "修仙之体" or name == "恶魔之躯" or name == "魔爪" or name == "聚气" or name == "海浪之形")
                 then
                    hattr.set(u, 0, {agi_green = "+" .. Val[1]})
                elseif (name == "冥想" or name == "大智慧" or name == "三千年智慧") then
                    hattr.set(u, 0, {int_green = "+" .. Val[1]})
                elseif (name == "六刃智慧") then
                    hattr.set(u, 0, {int_green = "+" .. Val[1], attack_green = "+" .. Val[2]})
                elseif (name == "古代帝王") then
                    hattr.set(u, 0, {str_green = "+" .. Val[1], agi_green = "+" .. Val[2], int_green = "+" .. Val[3]})
                elseif (name == "塞壬之歌" or name == "甲虫之盔" or name == "洁白无瑕") then
                    hattr.set(u, 0, {resistance = "+" .. Val[1]})
                elseif (name == "石像化" or name == "腰马合一" or name == "折磨耐性") then
                    hattr.set(u, 0, {toughness = "+" .. Val[1]})
                elseif (name == "黑暗舞步" or name == "恶灵披风" or name == "猎影" or name == "虚幻" or name == "无欲无求") then
                    hattr.set(u, 0, {avoid = "+" .. Val[1]})
                elseif (name == "影子替身") then
                    hattr.set(
                        u,
                        0,
                        {
                            attack_damage_type = "+magic",
                            avoid = "+" .. Val[1]
                        }
                    )
                elseif (name == "猫头鹰怒视" or name == "捕猎者") then
                    hattr.set(u, 0, {aim = "+" .. Val[1]})
                elseif (name == "激灵一箭") then
                    hattr.set(u, 0, {aim = "+" .. Val[1], attack_green = "+" .. Val[2]})
                elseif (name == "鸦仇") then
                    hattr.set(u, 0, {aim = "+" .. Val[1], attack_speed = "+" .. Val[2]})
                elseif (name == "恶魔巫术" or name == "剃骨之刃") then
                    hattr.set(u, 0, {damage_extent = "+" .. Val[1]})
                elseif (name == "野生龙种" or name == "龙骑士") then
                    hattr.set(u, 0, {attack_damage_type = "+dragon"})
                elseif (name == "树木之妖") then
                    hattr.set(u, 0, {attack_damage_type = "+wood"})
                elseif (name == "山岭之灵") then
                    hattr.set(u, 0, {attack_damage_type = "+soil"})
                elseif (name == "水之元素") then
                    hattr.set(u, 0, {attack_damage_type = "+water"})
                elseif (name == "火之元素") then
                    hattr.set(u, 0, {attack_damage_type = "+fire"})
                elseif (name == "随风" or name == "追风") then
                    hattr.set(u, 0, {attack_damage_type = "+wind"})
                elseif (name == "毒龙液") then
                    hattr.set(u, 0, {attack_damage_type = "+poison"})
                elseif (name == "金属元素") then
                    hattr.set(u, 0, {attack_damage_type = "+metal"})
                elseif (name == "战鬼" or name == "魂鬼" or name == "幽鬼灯火") then
                    hattr.set(u, 0, {attack_damage_type = "+ghost"})
                elseif (name == "冰魂") then
                    hattr.set(u, 0, {attack_damage_type = "+ice"})
                elseif (name == "绘画之妙") then
                    hattr.set(u, 0, {attack_damage_type = "+light,dark"})
                elseif (name == "冥王之剑") then
                    hattr.set(u, 0, {attack_damage_type = "+ghost,dark,metal"})
                elseif (name == "千年龙骨") then
                    hattr.set(u, 0, {attack_damage_type = "+ghost,ice"})
                elseif (name == "神赐之力") then
                    hattr.set(u, 0, {attack_damage_type = "+god,light"})
                elseif (name == "金睛火眼") then
                    hattr.set(u, 0, {attack_damage_type = "+fire,metal"})
                elseif (name == "霹雳化身" or name == "电离之子") then
                    hattr.set(u, 0, {attack_damage_type = "+thunder", attack_speed = "+" .. Val[1]})
                elseif (name == "噬日") then
                    hattr.set(u, 0, {attack_damage_type = "+dark", natural_dark = "+" .. Val[1]})
                elseif (name == "魂丧双鬼") then
                    hattr.set(u, 0, {attack_damage_type = "+ghost,dark", attack_green = "+" .. Val[1]})
                elseif (name == "冰雪之殇") then
                    hattr.set(
                        u,
                        0,
                        {
                            attack_damage_type = "+ice",
                            attack_debuff = {
                                add = {
                                    {
                                        attr = "move",
                                        odds = 100,
                                        val = Val[1],
                                        during = Val[2]
                                    }
                                }
                            }
                        }
                    )
                elseif (name == "十月冰封") then
                    hattr.set(
                        u,
                        0,
                        {
                            attack_debuff = {
                                add = {
                                    {
                                        attr = "move",
                                        odds = 100,
                                        val = Val[1],
                                        during = Val[3],
                                        effect = "Abilities\\Spells\\Undead\\FreezingBreath\\FreezingBreathTargetArt.mdl"
                                    },
                                    {
                                        attr = "defend",
                                        odds = 100,
                                        val = Val[2],
                                        during = Val[3]
                                    }
                                }
                            }
                        }
                    )
                elseif (name == "爱的火种" or name == "火焰之剑") then
                    hattr.set(
                        u,
                        0,
                        {
                            attack_damage_type = "+fire",
                            attack_debuff = {
                                add = {
                                    {
                                        attr = "life_back",
                                        odds = Val[1],
                                        val = Val[2],
                                        during = Val[3],
                                        effect = Val[4]
                                    }
                                }
                            }
                        }
                    )
                elseif (name == "水刀") then
                    hattr.set(
                        u,
                        0,
                        {
                            attack_damage_type = "+water",
                            attack_effect = {
                                add = {
                                    {
                                        attr = "split",
                                        odds = 100,
                                        range = Val[1],
                                        percent = Val[2],
                                        effect = "war3mapImported\\eff_WaterBlast.mdl"
                                    }
                                }
                            }
                        }
                    )
                elseif (name == "海洋之心" or name == "深海之心") then
                    hattr.set(u, 0, {natural_water = "+" .. Val[1]})
                elseif (name == "暗夜之魂" or name == "暗神之魂") then
                    hattr.set(u, 0, {natural_dark = "+" .. Val[1]})
                elseif (name == "大地种子") then
                    hattr.set(u, 0, {natural_wood = "+" .. Val[1]})
                elseif (name == "神启") then
                    hattr.set(u, 0, {natural_god = "+" .. Val[1]})
                elseif (name == "海妖特质") then
                    hattr.set(u, 0, {natural_water_oppose = "+" .. Val[1]})
                elseif (name == "巫术" or name == "中和") then
                    hattr.set(u, 0, {natural_poison_oppose = "+" .. Val[1]})
                elseif (name == "屠龙勇士") then
                    hattr.set(u, 0, {natural_dragon_oppose = "+" .. Val[1]})
                elseif (name == "吞光") then
                    hattr.set(u, 0, {natural_dark_oppose = "+" .. Val[1]})
                elseif (name == "诡秘空间") then
                    hattr.set(
                        u,
                        0,
                        {
                            natural_fire_oppose = "+" .. Val[1],
                            natural_soil_oppose = "+" .. Val[1],
                            natural_water_oppose = "+" .. Val[1],
                            natural_ice_oppose = "+" .. Val[1],
                            natural_wind_oppose = "+" .. Val[1],
                            natural_light_oppose = "+" .. Val[1],
                            natural_dark_oppose = "+" .. Val[1],
                            natural_wood_oppose = "+" .. Val[1],
                            natural_thunder_oppose = "+" .. Val[1],
                            natural_poison_oppose = "+" .. Val[1],
                            natural_ghost_oppose = "+" .. Val[1],
                            natural_metal_oppose = "+" .. Val[1],
                            natural_dragon_oppose = "+" .. Val[1],
                            natural_insect_oppose = "+" .. Val[1],
                            natural_god_oppose = "+" .. Val[1]
                        }
                    )
                elseif (name == "反抗神命") then
                    hattr.set(u, 0, {attack_damage_type = "+absolute", natural_god_oppose = "+" .. Val[1]})
                elseif (name == "针刺外壳") then
                    hattr.set(u, 0, {damage_rebound = "+" .. Val[1]})
                elseif (name == "机械之心") then
                    hattr.set(u, 0, {str_green = "+" .. Val[1], agi_green = "+" .. Val[2], defend = "+" .. Val[3]})
                end
                if (name == "深渊之刃") then
                    hattr.set(
                        u,
                        0,
                        {
                            attack_damage_type = "+dark",
                            attack_effect = {
                                add = {
                                    {
                                        attr = "split",
                                        odds = 100,
                                        range = Val[1],
                                        percent = Val[2]
                                    }
                                }
                            }
                        }
                    )
                end
                if (name == "小牛粉碎" or name == "分裂大刀" or name == "分裂狂刀") then
                    hattr.set(
                        u,
                        0,
                        {
                            attack_effect = {
                                add = {
                                    {
                                        attr = "split",
                                        odds = 100,
                                        range = Val[1],
                                        percent = Val[2]
                                    }
                                }
                            }
                        }
                    )
                elseif
                    (name == "熊掌战意" or name == "马索格爆锤" or name == "致命剑术" or name == "恩赐解脱" or name == "爆头" or
                        name == "刺客信条" or
                        name == "醉拳" or
                        name == "短棘戟" or
                        name == "长棘戟")
                 then
                    hattr.set(
                        u,
                        0,
                        {
                            attack_effect = {
                                add = {
                                    {
                                        attr = "knocking",
                                        odds = Val[1],
                                        percent = Val[2]
                                    }
                                }
                            }
                        }
                    )
                elseif (name == "法术研究" or name == "图腾祭奠") then
                    hattr.set(
                        u,
                        0,
                        {
                            attack_effect = {
                                add = {
                                    {
                                        attr = "violence",
                                        odds = Val[1],
                                        percent = Val[2]
                                    }
                                }
                            }
                        }
                    )
                end
                if (name == "黑暗之箭" or name == "黑夜之箭" or name == "黑狱之箭") then
                    hattr.set(
                        u,
                        0,
                        {
                            attack_damage_type = "+dark",
                            attack_debuff = {
                                add = {
                                    {
                                        attr = "defend",
                                        odds = 100,
                                        val = Val[1],
                                        during = Val[2]
                                    }
                                }
                            }
                        }
                    )
                end
                if (name == "透彻寒骨" or name == "冰晶") then
                    hattr.set(
                        u,
                        0,
                        {
                            attack_damage_type = "+ice",
                            attack_debuff = {
                                add = {
                                    {
                                        attr = "defend",
                                        odds = 100,
                                        val = Val[1],
                                        during = Val[2]
                                    }
                                }
                            }
                        }
                    )
                end
                if
                    (table.includes(
                        name,
                        {
                            --attack_green
                            "追魂狩猎",
                            "狂魂狩猎",
                            "狂魂骑猎",
                            "噬魂",
                            --attack_speed
                            "狂战士之血",
                            "鬼枪术"
                        }
                    ))
                 then
                    local a
                    if (name == "追魂狩猎" or name == "狂魂狩猎" or name == "狂魂骑猎" or name == "噬魂") then
                        a = "attack_green"
                    elseif (name == "狂战士之血" or name == "鬼枪术") then
                        a = "attack_speed"
                    end
                    if (a ~= nil) then
                        hattr.set(
                            u,
                            0,
                            {
                                attack_buff = {
                                    add = {
                                        {
                                            attr = a,
                                            odds = Val[1],
                                            val = Val[2],
                                            during = Val[3],
                                            effect = Val[4]
                                        }
                                    }
                                }
                            }
                        )
                    end
                end
                if
                    (table.includes(
                        name,
                        {
                            --move
                            "净化",
                            "灵魂净化",
                            --life_back
                            "蛊毒",
                            "蛛毒",
                            "腐尸毒",
                            "燃油烧弹",
                            "奇美拉毒液",
                            "蛙毒",
                            "剧毒虾皮细胞",
                            "三昧真火",
                            "撕咬",
                            "无声的死亡旋律",
                            --defend
                            "鬼歌"
                        }
                    ))
                 then
                    local a
                    if (name == "净化" or name == "灵魂净化") then
                        a = "move"
                    elseif
                        (name == "蛊毒" or name == "蛛毒" or name == "腐尸毒" or name == "燃油烧弹" or name == "奇美拉毒液" or
                            name == "蛙毒" or
                            name == "外界毒虫" or
                            name == "剧毒虾皮细胞" or
                            name == "三昧真火" or
                            name == "撕咬" or
                            name == "无声的死亡旋律")
                     then
                        a = "life_back"
                    elseif (name == "鬼歌") then
                        a = "defend"
                    end
                    if (name == "蛙毒" or name == "外界毒虫") then
                        hattr.set(u, 0, {attack_damage_type = "+poison"})
                    end
                    if (a ~= nil) then
                        hattr.set(
                            u,
                            0,
                            {
                                attack_debuff = {
                                    add = {
                                        {
                                            attr = a,
                                            odds = Val[1],
                                            val = Val[2],
                                            during = Val[3],
                                            effect = Val[4]
                                        }
                                    }
                                }
                            }
                        )
                    end
                end
                if
                    (name == "震荡光弹" or name == "暴力倾向" or name == "旋风" or name == "魅惑" or name == "撸战棍" or name == "恍惚灯路" or
                        name == "晴天霹雳" or
                        name == "沉痛打击" or
                        name == "深情一吻")
                 then
                    hattr.set(
                        u,
                        0,
                        {
                            attack_effect = {
                                add = {
                                    {
                                        attr = "swim",
                                        odds = Val[1],
                                        val = Val[2],
                                        during = Val[3],
                                        effect = Val[4]
                                    }
                                }
                            }
                        }
                    )
                end
                if (name == "诡异闪电" or name == "狂异闪电" or name == "狂徒闪电" or name == "痛苦链" or name == "神灭斩") then
                    hattr.set(
                        u,
                        0,
                        {
                            attack_effect = {
                                add = {
                                    {
                                        attr = "lightning_chain",
                                        lightning_type = hlightning.type.si_wang_zhi_zhi,
                                        odds = Val[1],
                                        val = Val[2],
                                        qty = 1,
                                        effect = "Abilities\\Spells\\Demon\\DemonBoltImpact\\DemonBoltImpact.mdl"
                                    }
                                }
                            }
                        }
                    )
                end
                if (name == "风暴之锤" or name == "离火之锤" or name == "闪电雷霆" or name == "闪电连链" or name == "誓神劈愿") then
                    hattr.set(
                        u,
                        0,
                        {
                            attack_effect = {
                                add = {
                                    {
                                        attr = "lightning_chain",
                                        odds = Val[1],
                                        qty = Val[2],
                                        val = Val[3],
                                        effect = "Abilities\\Spells\\Human\\ManaFlare\\ManaFlareBoltImpact.mdl"
                                    }
                                }
                            }
                        }
                    )
                end
            end
        end
    end
end
enemyBeDamage = function(evtData)
    local u = evtData.triggerUnit
    if (his.alive(u) and cj.GetRandomInt(1, 10) == 5) then
        htextTag.style(
            htextTag.create2Unit(u, game.enemyTips[cj.GetRandomInt(1, #game.enemyTips)], 10.00, "", 1, 1.1, 11.00),
            "scale",
            cj.GetRandomReal(-0.05, 0.05),
            0
        )
        heffect.bindUnit("Abilities\\Weapons\\AvengerMissile\\AvengerMissile.mdl", u, "head", 2.50)
        heffect.bindUnit("Abilities\\Weapons\\AvengerMissile\\AvengerMissile.mdl", u, "origin", 2.50)
        hattr.set(
            u,
            2.50,
            {
                move = "+" .. math.random(60, 100)
            }
        )
    end
end
towerShadowTtgCount = 1
towerShadowTtg = function(u, string)
    htextTag.style(
        htextTag.create2Unit(u, string, 6.9 + onTowerAttackTtgCount * 0.1, "FFFF00", 1, 2, 10),
        "scale",
        0,
        towerShadowTtgCount * 0.05
    )
    towerShadowTtgCount = towerShadowTtgCount + 1
    htime.setTimeout(
        2,
        function(t, td)
            htime.delDialog(td)
            htime.delTimer(t)
            towerShadowTtgCount = towerShadowTtgCount - 1
        end
    )
end
towerShadowBeDamage = function(evtData)
    local u = evtData.triggerUnit
    local sourceUnit = evtData.sourceUnit
    local playerIndex = hunit.getUserData(u)
    local shadow = game.playerTower[playerIndex]
    for ABILITY_ID, v in pairs(hslk_global.abilitiesKV) do
        if (hskill.has(shadow, ABILITY_ID)) then
            local Name = v.Name
            local level = v.ABILITY_LEVEL or 1
            local val = v.Val
            level = level * 2 - 1
            if (Name ~= nil) then
                if (Name == "恶心粘液") then
                    towerShadowTtg(u, Name)
                    hattr.set(
                        sourceUnit,
                        5,
                        {
                            attack_speed = "-" .. val[1] * level
                        }
                    )
                end
                if (Name == "降格打击") then
                    towerShadowTtg(u, Name)
                    hattr.set(
                        sourceUnit,
                        6,
                        {
                            str_green = "-" .. val[1] * level,
                            agi_green = "-" .. val[1] * level,
                            int_green = "-" .. val[1] * level
                        }
                    )
                end
                if (Name == "变相移动") then
                    towerShadowTtg(u, Name)
                    hattr.set(
                        u,
                        4,
                        {
                            move = "+" .. val[1] * level
                        }
                    )
                end
                if (Name == "钢铁身躯") then
                    towerShadowTtg(u, Name)
                    hattr.set(
                        u,
                        6,
                        {
                            defend = "+" .. val[1] * level
                        }
                    )
                end
                if (Name == "回音击" and math.random(1, 5) == 3) then
                    towerShadowTtg(u, Name)
                    hskill.swim(
                        {
                            odds = 100,
                            whichUnit = sourceUnit,
                            during = level * val[1]
                        }
                    )
                end
                if (Name == "寂静督视" and math.random(1, 5) == 3) then
                    towerShadowTtg(u, Name)
                    hskill.unarm(
                        {
                            odds = 100,
                            whichUnit = sourceUnit,
                            during = level * val[1]
                        }
                    )
                end
                if (Name == "巫术") then
                    if (math.random(1, 100) <= val[2]) then
                        towerShadowTtg(u, Name)
                        hskill.invulnerable(u, val[3], "Abilities\\Spells\\Orc\\Voodoo\\VoodooAura.mdl")
                    end
                end
                if (Name == "不朽传说") then
                    if (math.random(1, 100) <= val[1]) then
                        towerShadowTtg(u, Name)
                        hskill.invulnerable(u, val[2], "Abilities\\Spells\\Demon\\ReviveDemon\\ReviveDemon.mdl")
                    end
                end
                if (Name == "回光返照" or Name == "自然之力") then
                    if (hunit.getCurLifePercent(u) < 75) then
                        towerShadowTtg(u, Name)
                        hattr.set(u, val[2], {life_back = val[1]})
                    end
                end
                if (Name == "逃命" or Name == "着草" or Name == "加速") then
                    if (math.random(1, 100) <= val[1]) then
                        towerShadowTtg(u, Name)
                        hattr.set(
                            u,
                            val[3],
                            {
                                move = "+" .. val[2]
                            }
                        )
                    end
                end
                if (Name == "潜行" or Name == "隐术") then
                    if (math.random(1, 100) <= val[1]) then
                        towerShadowTtg(u, Name)
                        hskill.invisible(u, val[2])
                    end
                end
                if (Name == "复命" or Name == "涅槃") then
                    if (math.random(1, 100) <= val[1]) then
                        towerShadowTtg(u, Name)
                        hunit.addCurLife(u, val[2])
                    end
                end
            end
        end
    end
end
towerShadowDead = function(evtData)
    local shadow = evtData.triggerUnit
    local killer = evtData.killer
    local shadowName = hunit.getName(shadow)
    local shadowPName = cj.GetPlayerName(hplayer.players[hunit.getUserData(shadow)])
    if (killer ~= nil) then
        local killerPlayer = cj.GetOwningPlayer(killer)
        local killerName = cj.GetPlayerName(killerPlayer)
        if (shadowPName ~= nil and shadowName ~= nil and killerName ~= nil) then
            hmsg.echo(
                hColor.sky(shadowPName) .. "的" .. hColor.yellow(shadowName) .. "被" .. hColor.green(killerName) .. "干掉了~"
            )
        end
        local gold = 50 * game.rule.dk.wave[hplayer.index(killerPlayer)]
        hplayer.addGold(killerPlayer, gold, killer)
    else
        if (shadowPName ~= nil and shadowName ~= nil) then
            hmsg.echo(hColor.sky(shadowPName) .. "的" .. hColor.yellow(shadowName) .. "被干掉了~")
        end
    end
    hunit.del(shadow, 3)
    --死亡技能
    local playerIndex = hunit.getUserData(shadow)
    local tower = game.playerTower[playerIndex]
    for ABILITY_ID, v in pairs(hslk_global.abilitiesKV) do
        if (hskill.has(tower, ABILITY_ID)) then
            local Name = v.Name
            local level = v.ABILITY_LEVEL or 1
            level = level * 2 - 1
            local val = v.Val or {}
            if (Name ~= nil) then
                if (Name == "复仇" and killer ~= nil) then
                    local p = cj.GetOwningPlayer(killer)
                    local pindex = hplayer.index(p)
                    local killerName = cj.GetPlayerName(p)
                    local blood = level * val[1]
                    if (shadowPName ~= nil and shadowName ~= nil) then
                        hmsg.echo(
                            hColor.green(shadowPName) ..
                                "的" ..
                                    hColor.yellow(shadowName) ..
                                        "对" .. hColor.sky(killerName) .. "施展了复仇扣了" .. hColor.red(blood) .. "点血"
                        )
                    end
                    hunit.subCurLife(game.playerTower[pindex], blood)
                end
            end
        end
    end
end
towerShadowGen = function(playerIndex)
    local tower = game.playerTower[playerIndex]
    local tid = hunit.getId(tower)
    local next = getNextRect(playerIndex)
    if (next == -1) then
        return
    end
    if (game.towersShadow[tid] == nil) then
        return
    end
    local u =
        henemy.create(
        {
            unitId = game.towersShadow[tid].UNIT_ID,
            qty = 1,
            x = game.pathPoint[next][1][1],
            y = game.pathPoint[next][1][2],
            modelScale = 1.9,
            facing = playerIndex * -90 + 180
        }
    )
    cj.IssuePointOrderById(u, 851986, game.pathPoint[next][2][1], game.pathPoint[next][2][2])
    cj.SetUnitPathing(u, false)
    hskill.add(u, game.effectModel["影子兵塔特效"].ABILITY_ID, 0)
    hunit.setColor(u, playerIndex)
    hattr.set(
        u,
        0,
        {
            move = "=" .. (180 + 2 * htime.min),
            life = "=" .. hattr.get(tower, "life"),
            life_back = "=" .. hattr.get(tower, "life_back"),
            defend = "=" .. hattr.get(tower, "defend"),
            resistance = "=" .. hattr.get(tower, "resistance"),
            toughness = "=" .. hattr.get(tower, "toughness"),
            avoid = "=" .. hattr.get(tower, "avoid"),
            damage_rebound = "=" .. hattr.get(tower, "damage_rebound"),
            knocking_oppose = "=" .. hattr.get(tower, "knocking_oppose"),
            violence_oppose = "=" .. hattr.get(tower, "violence_oppose"),
            hemophagia_oppose = "=" .. hattr.get(tower, "hemophagia_oppose"),
            hemophagia_skill_oppose = "=" .. hattr.get(tower, "hemophagia_skill_oppose"),
            swim_oppose = "=" .. hattr.get(tower, "swim_oppose"),
            broken_oppose = "=" .. hattr.get(tower, "broken_oppose"),
            silent_oppose = "=" .. hattr.get(tower, "silent_oppose"),
            unarm_oppose = "=" .. hattr.get(tower, "unarm_oppose"),
            fetter_oppose = "=" .. hattr.get(tower, "fetter_oppose"),
            bomb_oppose = "=" .. hattr.get(tower, "bomb_oppose"),
            lightning_chain_oppose = "=" .. hattr.get(tower, "lightning_chain_oppose"),
            natural_fire_oppose = "=" .. hattr.get(tower, "natural_fire_oppose"),
            natural_soil_oppose = "=" .. hattr.get(tower, "natural_soil_oppose"),
            natural_water_oppose = "=" .. hattr.get(tower, "natural_water_oppose"),
            natural_ice_oppose = "=" .. hattr.get(tower, "natural_ice_oppose"),
            natural_wind_oppose = "=" .. hattr.get(tower, "natural_wind_oppose"),
            natural_light_oppose = "=" .. hattr.get(tower, "natural_light_oppose"),
            natural_dark_oppose = "=" .. hattr.get(tower, "natural_dark_oppose"),
            natural_wood_oppose = "=" .. hattr.get(tower, "natural_wood_oppose"),
            natural_thunder_oppose = "=" .. hattr.get(tower, "natural_thunder_oppose"),
            natural_poison_oppose = "=" .. hattr.get(tower, "natural_poison_oppose"),
            natural_ghost_oppose = "=" .. hattr.get(tower, "natural_ghost_oppose"),
            natural_metal_oppose = "=" .. hattr.get(tower, "natural_metal_oppose"),
            natural_dragon_oppose = "=" .. hattr.get(tower, "natural_dragon_oppose"),
            natural_insect_oppose = "=" .. hattr.get(tower, "natural_insect_oppose"),
            natural_god_oppose = "=" .. hattr.get(tower, "natural_god_oppose")
        }
    )
    hunit.setUserData(u, playerIndex)
    hevent.onBeDamage(u, towerShadowBeDamage)
    hevent.onDead(u, towerShadowDead)
    local slk = hslk_global.unitsKV[tid]
    local towerName = slk.Name
    hmsg.echo(
        hColor.sky(cj.GetPlayerName(hplayer.players[playerIndex])) ..
            "达到了|cffffff00第" ..
                game.rule.dk.wave[playerIndex] .. "级|r，TA的兵塔" .. hColor.red(towerName) .. "开始进攻！其他人注意防守！"
    )
    game.currentMon = game.currentMon + 1
    dzSetLumber(hplayer.players[playerIndex], game.rule.dk.wave[playerIndex])
end
enemyDeadTowerDrop = {}
enemyDeadAward = function(triggerUnit, killer)
    local x = cj.GetUnitX(triggerUnit)
    local y = cj.GetUnitY(triggerUnit)
    hunit.del(triggerUnit, 2)
    
    if (cj.GetRandomInt(1, 15) == 13) then
        hunit.create(
            {
                register = false,
                whichPlayer = hplayer.player_passive,
                unitId = game.thisUnits["河草"].UNIT_ID,
                qty = 1,
                x = x,
                y = y,
                during = cj.GetRandomReal(20, 45)
            }
        )
    end
    local playerIndex = 0
    if (killer ~= nil) then
        playerIndex = hplayer.index(cj.GetOwningPlayer(killer))
    end
    --curWave
    local curWave = 1
    if (game.rule.cur == "yb") then
        curWave = game.rule.yb.wave
    elseif (game.rule.cur == "hz") then
        curWave = game.rule.hz.wave
    elseif (game.rule.cur == "dk" and killer ~= nil) then
        curWave = game.rule.dk.wave[playerIndex]
    end
    --
    if (cj.GetRandomInt(1, 25) == 13 and curWave >= 2) then
        
        local tarBLv = getBookPowLevel(curWave)
        if (#game.thisOptionAbilityItem["blue"][tarBLv] > 0) then
            local itId = table.random(game.thisOptionAbilityItem["blue"][tarBLv]).ITEM_ID
            local it =
                hitem.create(
                {
                    itemId = itId,
                    x = x,
                    y = y,
                    during = 60
                }
            )
            --如果是AI模式
            MAYBE_AI.item(playerIndex, it, "book")
        end
    end
    if (cj.GetRandomInt(1, 45) == 27 and curWave >= 7) then
        
        local tarBLv = getBookPowLevel(curWave)
        if (#game.thisOptionAbilityItem["yellow"][tarBLv] > 0) then
            local itId = table.random(game.thisOptionAbilityItem["yellow"][tarBLv]).ITEM_ID
            local it =
                hitem.create(
                {
                    itemId = itId,
                    x = x,
                    y = y,
                    during = 60
                }
            )
            --如果是AI模式
            MAYBE_AI.item(playerIndex, it, "book")
        end
    end
    if (cj.GetRandomInt(1, 90) == 46 and curWave >= 19) then
        
        local tarBLv = getBookPowLevel(curWave)
        if (#game.thisOptionAbilityItem["purple"][tarBLv] > 0) then
            local itId = table.random(game.thisOptionAbilityItem["purple"][tarBLv]).ITEM_ID
            local it =
                hitem.create(
                {
                    itemId = itId,
                    x = x,
                    y = y,
                    during = 60
                }
            )
            --如果是AI模式
            MAYBE_AI.item(playerIndex, it, "book")
        end
    end
    --
    if (playerIndex > 0) then
        if (enemyDeadTowerDrop[playerIndex] == nil) then
            enemyDeadTowerDrop[playerIndex] = 2
        end
        local mid = math.floor(enemyDeadTowerDrop[playerIndex] / 2)
        if (cj.GetRandomInt(1, enemyDeadTowerDrop[playerIndex]) == mid) then
            
            local targetTPow = getTowerPowLevel(curWave)
            if (game.thisOptionTowerPowerItem[targetTPow] ~= nil) then
                local rand = table.random(game.thisOptionTowerPowerItem[targetTPow])
                local it =
                    hitem.create(
                    {
                        itemId = rand.ITEM_ID,
                        x = x,
                        y = y,
                        during = 120
                    }
                )
                --如果是AI模式
                MAYBE_AI.item(playerIndex, it, "stone")
            end
            if (enemyDeadTowerDrop[playerIndex] < 20) then
                enemyDeadTowerDrop[playerIndex] = enemyDeadTowerDrop[playerIndex] + 1
            end
        end
    end
end
enemyDeadYB = function(evtData)
    game.currentMon = game.currentMon - 1
    if (evtData.killer ~= nil) then
        haward.forGroupExp(evtData.killer, 27 * game.rule.yb.wave)
    end
    enemyDeadAward(evtData.triggerUnit, evtData.killer)
end
enemyDeadHZ = function(evtData)
    game.currentMon = game.currentMon - 1
    if (evtData.killer ~= nil) then
        haward.forGroupExp(evtData.killer, 23 * game.rule.hz.wave)
    end
    enemyDeadAward(evtData.triggerUnit, evtData.killer)
end
enemyDeadDK = function(evtData)
    game.currentMon = game.currentMon - 1
    local u = evtData.killer
    if (u ~= nil) then
        local pi = hplayer.index(cj.GetOwningPlayer(u))
        local exp = 25 * game.rule.dk.wave[pi]
        local gold = 3 * game.rule.dk.wave[pi]
        haward.forGroup(u, exp, gold, 0)
        game.rule.dk.playerQty[pi] = game.rule.dk.playerQty[pi] + 1
        if (game.rule.dk.playerQty[pi] >= game.rule.dk.perWaveQty) then
            game.rule.dk.playerQty[pi] = 0
            game.rule.dk.wave[pi] = game.rule.dk.wave[pi] + 1
            game.rule.dk.mon[pi] = game.thisEnemys[cj.GetRandomInt(1, game.thisEnemysLen)].UNIT_ID
            --奖励的东东
            if (math.fmod(game.rule.dk.wave[pi], 10) == 0) then
                awardGenForOne(game.rule.dk.wave[pi], pi)
            end
            --我的兵塔，进攻！
            if (math.fmod(game.rule.dk.wave[pi], game.rule.dk.shadowMod[pi]) == 0) then
                towerShadowGen(pi)
                if (game.rule.dk.shadowMod[pi] > 1) then
                    game.rule.dk.shadowMod[pi] = game.rule.dk.shadowMod[pi] - 1
                elseif (game.rule.dk.shadowMod[pi] == 1) then
                    game.rule.dk.shadowMod[pi] = 4
                end
            end
        end
    end
    local ui = game.rule.dk.monData[cj.GetTriggerUnit()].pathIndex
    game.rule.dk.monLimit[ui] = game.rule.dk.monLimit[ui] - 1
    enemyDeadAward(evtData.triggerUnit, u)
end
bossBeDamage = function(evtData)
    local u = evtData.triggerUnit
    if (his.alive(u) and cj.GetRandomInt(1, 5) == 3) then
        htextTag.style(
            htextTag.create2Unit(u, game.enemyTips[cj.GetRandomInt(1, #game.enemyTips)], 10.00, "", 1, 1.1, 11.00),
            "scale",
            cj.GetRandomReal(-0.05, 0.05),
            0
        )
        heffect.bindUnit("Abilities\\Weapons\\AvengerMissile\\AvengerMissile.mdl", u, "head", 2.50)
        heffect.bindUnit("Abilities\\Weapons\\AvengerMissile\\AvengerMissile.mdl", u, "origin", 2.50)
        hattr.set(
            u,
            1.50,
            {
                move = "+" .. math.random(110, 150)
            }
        )
    end
end
bossDead = function(evtData)
    game.currentMon = game.currentMon - 1
    local u = evtData.killer
    if (u ~= nil) then
        local p = cj.GetOwningPlayer(u)
        local playerIndex = hplayer.index(p)
        local curWave = 0
        if (game.rule.cur == "yb") then
            haward.forGroupExp(u, 350 * game.rule.yb.wave)
            curWave = game.rule.yb.wave
        elseif (game.rule.cur == "hz") then
            haward.forGroupExp(u, 300 * game.rule.hz.wave)
            curWave = game.rule.hz.wave
        else
            haward.forGroupExp(u, 1200)
            curWave = game.rule.dk.wave[playerIndex]
        end
        local killerName = cj.GetPlayerName(p)
        local bossName = hunit.getName(evtData.triggerUnit)
        if (killerName ~= nil) then
            hmsg.echo(hColor.sky(killerName) .. "干掉了" .. hColor.yellow(bossName))
        end
        
        local x = cj.GetUnitX(evtData.triggerUnit)
        local y = cj.GetUnitY(evtData.triggerUnit)
        for i = 1, 3 do
            local targetTPow = getTowerPowLevel(curWave)
            if (game.thisOptionTowerPowerItem[targetTPow] ~= nil) then
                local rand = table.random(game.thisOptionTowerPowerItem[targetTPow])
                hitem.create(
                    {
                        itemId = rand.ITEM_ID,
                        x = x,
                        y = y,
                        during = 60
                    }
                )
            end
        end
    end
    hunit.del(evtData.triggerUnit, 3)
end
bossGenLife = 800
bossGen = function(curWave)
    local boss = game.thisEnemysBoss[cj.GetRandomInt(1, game.thisEnemysBossLen)].UNIT_ID
    for k, v in pairs(game.pathPoint) do
        if (his.playing(hplayer.players[k])) then
            local u =
                henemy.create(
                {
                    unitId = boss,
                    qty = 1,
                    x = v[1][1],
                    y = v[1][2],
                    facing = k * -90 + 180
                }
            )
            cj.SetUnitPathing(u, false)
            hattr.set(
                u,
                0,
                {
                    life = "=" .. (bossGenLife * curWave),
                    move = "=130",
                    defend = "=" .. curWave * 2,
                    toughness = "=" .. curWave * 20,
                    resistance = "=" .. curWave * 0.5,
                    avoid = "=" .. curWave * 0.18,
                    knocking_oppose = "=" .. curWave * 0.3,
                    violence_oppose = "=" .. curWave * 0.3,
                    swim_oppose = "=" .. curWave * 0.2,
                    fetter_oppose = "=" .. curWave * 0.2,
                    lightning_chain_oppose = "=" .. curWave * 0.1,
                    natural_fire_oppose = "=" .. curWave * 0.06,
                    natural_water_oppose = "=" .. curWave * 0.06,
                    natural_ice_oppose = "=" .. curWave * 0.06,
                    natural_wind_oppose = "=" .. curWave * 0.06,
                    natural_light_oppose = "=" .. curWave * 0.05,
                    natural_dark_oppose = "=" .. curWave * 0.05,
                    natural_wood_oppose = "=" .. curWave * 0.05,
                    natural_thunder_oppose = "=" .. curWave * 0.05,
                    natural_soil_oppose = "=" .. curWave * 0.04,
                    natural_poison_oppose = "=" .. curWave * 0.04,
                    natural_ghost_oppose = "=" .. curWave * 0.04,
                    natural_metal_oppose = "=" .. curWave * 0.04,
                    natural_dragon_oppose = "=" .. curWave * 0.03,
                    natural_insect_oppose = "=" .. curWave * 0.02,
                    natural_god_oppose = "=" .. curWave * 0.01
                }
            )
            game.currentMon = game.currentMon + 1
            hevent.onBeDamage(u, bossBeDamage)
            hevent.onDead(u, bossDead)
            hskill.add(u, game.effectModel["影子兵塔特效"].ABILITY_ID, 0)
        end
    end
    hmark.create("war3mapImported\\mark_boss_coming.blp", 4.00)
    bossGenLife = bossGenLife + 285 + curWave * 3
end
awardDead = function(evtData)
    game.currentMon = game.currentMon - 1
    hunit.del(evtData.triggerUnit, 3)
end
awardBeDamage = function(evtData)
    local u = evtData.triggerUnit
    local sourceUnit = evtData.sourceUnit
    htextTag.style(htextTag.create2Unit(u, "哎呀~", 10.00, "", 1, 1.1, 11.00), "scale", cj.GetRandomReal(-0.05, 0.05), 0)
    if (sourceUnit ~= nil) then
        local name = hunit.getName(u)
        local damage = evtData.damage
        if (name == "[AWARD]大金币") then
            haward.forUnitGold(sourceUnit, math.floor(damage * 0.14))
        elseif (name == "[AWARD]大本书") then
            haward.forGroupExp(sourceUnit, math.floor(damage * 0.28))
        end
    end
end
awardGenForOne = function(curWave, pi, awardMon)
    if (awardMon == nil) then
        awardMon = game.thisEnemysAward[cj.GetRandomInt(1, game.thisEnemysAwardLen)]
    end
    local u =
        henemy.create(
        {
            unitId = awardMon.UNIT_ID,
            qty = 1,
            x = game.pathPoint[pi][1][1],
            y = game.pathPoint[pi][1][2],
            facing = pi * -90 + 180
        }
    )
    cj.SetUnitPathing(u, false)
    hattr.set(
        u,
        0,
        {
            life = "=99999",
            move = "=200",
            defend = "=" .. curWave * 3,
            toughness = "=" .. curWave * 30,
            resistance = "=" .. curWave * 1,
            avoid = "=" .. curWave * 0.25,
            swim_oppose = "=" .. curWave * 0.2,
            fetter_oppose = "=" .. curWave * 0.2,
            lightning_chain_oppose = "=" .. curWave * 0.1,
            natural_fire_oppose = "=" .. curWave * 0.06,
            natural_water_oppose = "=" .. curWave * 0.06,
            natural_ice_oppose = "=" .. curWave * 0.06,
            natural_wind_oppose = "=" .. curWave * 0.06,
            natural_light_oppose = "=" .. curWave * 0.05,
            natural_dark_oppose = "=" .. curWave * 0.05,
            natural_wood_oppose = "=" .. curWave * 0.05,
            natural_thunder_oppose = "=" .. curWave * 0.05,
            natural_soil_oppose = "=" .. curWave * 0.04,
            natural_poison_oppose = "=" .. curWave * 0.04,
            natural_ghost_oppose = "=" .. curWave * 0.04,
            natural_metal_oppose = "=" .. curWave * 0.04,
            natural_dragon_oppose = "=" .. curWave * 0.03,
            natural_insect_oppose = "=" .. curWave * 0.02,
            natural_god_oppose = "=" .. curWave * 0.01
        }
    )
    if (game.rule.cur == "dk") then
        if (game.rule.dk.ai == true) then
            hunit.setPeriod(u, 100)
        else
            hunit.setPeriod(u, 25 * hplayer.qty_current)
        end
    else
        hunit.setPeriod(u, 30)
    end
    game.currentMon = game.currentMon + 1
    hevent.onDead(u, awardDead)
    hevent.onBeDamage(u, awardBeDamage)
    if (awardMon.Name == "大金币") then
        hmark.create("war3mapImported\\mark_award_gold.blp", 4.00, hplayer.players[pi])
    elseif (awardMon.Name == "大本书") then
        hmark.create("war3mapImported\\mark_award_exp.blp", 4.00, hplayer.players[pi])
    end
end
awardGen = function(curWave)
    local awardMon = game.thisEnemysAward[cj.GetRandomInt(1, game.thisEnemysAwardLen)]
    for k, v in pairs(game.pathPoint) do
        if (hplayer.getStatus(hplayer.players[k]) == hplayer.player_status.gaming) then
            awardGenForOne(curWave, k, awardMon)
        end
    end
end
enemyGenYB = function(waiting)
    htime.setTimeout(
        waiting,
        function(t, td)
            htime.delDialog(td)
            htime.delTimer(t)
            hsound.sound(cg.gg_snd_effect_0004)
            local count = game.rule.yb.perWaveQty
            game.rule.yb.mon = game.thisEnemys[cj.GetRandomInt(1, game.thisEnemysLen)].UNIT_ID
            htime.setInterval(
                game.rule.yb.fresh,
                function(t2, td2)
                    count = count - 1
                    if (game.runing == false) then
                        htime.delDialog(td2)
                        htime.delTimer(t2)
                        return
                    end
                    if (count <= 0) then
                        local nextWaitTime = game.rule.yb.waitTime
                        --5波一个boss,7波一个奖励
                        if (math.fmod(game.rule.yb.wave, 5) == 0) then
                            bossGen(game.rule.yb.wave)
                            nextWaitTime = 18
                            game.rule.yb.monLife = game.rule.yb.monLife + game.rule.yb.monLifeInc + hplayer.qty_current
                        end
                        if (game.rule.yb.wave > 2 and math.fmod((game.rule.yb.wave - 2), 5) == 0) then
                            awardGen(game.rule.yb.wave)
                            nextWaitTime = 18
                        end
                        htime.delDialog(td2)
                        htime.delTimer(t2)
                        if (game.rule.yb.wave >= game.rule.yb.waveEnd) then
                            htime.setInterval(
                                1,
                                function(t3)
                                    if (game.currentMon <= 0) then
                                        htime.delTimer(t3)
                                        hmark.create("war3mapImported\\mark_win.blp", 4.00)
                                        hmsg.echo("通过了" .. game.rule.yb.waveEnd .. "波!|cffffff00恭喜！欢乐！|r，10秒后会退出游戏")
                                        htime.setTimeout(
                                            10,
                                            function(t, td)
                                                htime.delDialog(td)
                                                htime.delTimer(t)
                                                hplayer.loop(
                                                    function(p)
                                                        hplayer.victory(p)
                                                    end
                                                )
                                            end,
                                            "祝贺你~准备离开~"
                                        )
                                    end
                                end
                            )
                            return
                        end
                        local gold = game.rule.yb.wave * 75
                        hplayer.loop(
                            function(p, pi)
                                if (his.playing(p)) then
                                    hsound.sound2Player(cg.gg_snd_coin_1, p)
                                    hmsg.echo(hplayer.getSelection(p))
                                    dzSetLumber(p, game.rule.yb.wave)
                                    hplayer.addGold(p, gold, game.playerTower[pi])
                                    local tempGold = cj.R2I(gold * hplayer.getGoldRatio(p) / 100)
                                    hmsg.echo00(
                                        p,
                                        "通过了|cffffff00第" ..
                                            game.rule.yb.wave .. "波|r，你获得了|cffffff00" .. tempGold .. "金|r奖励"
                                    )
                                end
                            end
                        )
                        game.rule.yb.wave = game.rule.yb.wave + 1
                        enemyGenYB(nextWaitTime)
                        return
                    end
                    for k, v in pairs(game.pathPoint) do
                        if (his.playing(hplayer.players[k])) then
                            local u =
                                henemy.create(
                                {
                                    unitId = game.rule.yb.mon,
                                    qty = 1,
                                    x = v[1][1],
                                    y = v[1][2],
                                    facing = k * -90 + 180
                                }
                            )
                            cj.SetUnitPathing(u, false)
                            hattr.set(
                                u,
                                0,
                                {
                                    life = "=" .. (game.rule.yb.monLife * game.rule.yb.wave),
                                    move = "=180",
                                }
                            )
                            game.currentMon = game.currentMon + 1
                            hevent.onBeDamage(u, enemyBeDamage)
                            hevent.onDead(u, enemyDeadYB)
                            cj.IssuePointOrderById(u, 851986, v[2][1], v[2][2])
                        end
                    end
                end
            )
        end,
        "第" .. game.rule.yb.wave .. "波"
    )
end
enemyGenHZ = function(waiting)
    htime.setTimeout(
        waiting,
        function(t, td)
            htime.delDialog(td)
            htime.delTimer(t)
            hsound.sound(cg.gg_snd_effect_0004)
            local count = game.rule.hz.perWaveQty
            game.rule.hz.mon = game.thisEnemys[cj.GetRandomInt(1, game.thisEnemysLen)].UNIT_ID
            htime.setInterval(
                game.rule.hz.fresh,
                function(t2, td2)
                    count = count - 1
                    if (game.runing == false) then
                        htime.delDialog(td2)
                        htime.delTimer(t2)
                        return
                    end
                    if (count <= 0) then
                        local nextWaitTime = game.rule.hz.waitTime
                        --10波一个boss,13波一个奖励
                        if (math.fmod(game.rule.hz.wave, 10) == 0) then
                            bossGen(game.rule.hz.wave)
                            nextWaitTime = 18
                            game.rule.hz.monLife = game.rule.hz.monLife + game.rule.hz.monLifeInc + hplayer.qty_current
                        end
                        if (game.rule.hz.wave > 3 and math.fmod((game.rule.hz.wave - 3), 10) == 0) then
                            awardGen(game.rule.hz.wave)
                            nextWaitTime = 18
                            game.rule.hz.monLife = game.rule.hz.monLife + math.floor(0.20 * game.rule.hz.wave)
                        end
                        htime.delDialog(td2)
                        htime.delTimer(t2)
                        local gold = game.rule.hz.wave * 100
                        if (gold > 50000) then
                            gold = 50000
                        end
                        game.rule.hz.wave = game.rule.hz.wave + 1
                        hplayer.loop(
                            function(p, pi)
                                if (his.playing(p)) then
                                    hsound.sound2Player(cg.gg_snd_coin_1, p)
                                    hmsg.echo(hplayer.getSelection(p))
                                    dzSetLumber(p, game.rule.hz.wave)
                                    hplayer.addGold(p, gold, game.playerTower[pi])
                                    local tempGold = cj.R2I(gold * hplayer.getGoldRatio(p) / 100)
                                    hmsg.echo00(
                                        p,
                                        "通过了|cffffff00第" ..
                                            game.rule.hz.wave .. "波|r，你获得了|cffffff00" .. tempGold .. "金|r奖励"
                                    )
                                end
                            end
                        )
                        enemyGenHZ(nextWaitTime)
                        return
                    end
                    for k, v in pairs(game.pathPoint) do
                        if (his.playing(hplayer.players[k])) then
                            local u =
                                henemy.create(
                                {
                                    unitId = game.rule.hz.mon,
                                    qty = 1,
                                    x = v[1][1],
                                    y = v[1][2],
                                    facing = k * -90 + 180
                                }
                            )
                            cj.SetUnitPathing(u, false)
                            hattr.set(
                                u,
                                0,
                                {
                                    life = "=" .. (game.rule.hz.monLife * game.rule.hz.wave),
                                    move = "=190"
                                }
                            )
                            game.currentMon = game.currentMon + 1
                            hevent.onBeDamage(u, enemyBeDamage)
                            hevent.onDead(u, enemyDeadHZ)
                            cj.IssuePointOrderById(u, 851986, v[2][1], v[2][2])
                        end
                    end
                end
            )
        end,
        "第" .. game.rule.hz.wave .. "波"
    )
end
enemyGenDK = function(waiting)
    htime.setTimeout(
        waiting,
        function(t, td)
            htime.delDialog(td)
            htime.delTimer(t)
            hsound.sound(cg.gg_snd_effect_0004)
            for i = 1, hplayer.qty_max, 1 do
                if (hplayer.getStatus(hplayer.players[i]) == hplayer.player_status.gaming) then
                    game.rule.dk.playerQty[i] = 0
                    game.rule.dk.wave[i] = 1
                    game.rule.dk.mon[i] = game.thisEnemys[cj.GetRandomInt(1, game.thisEnemysLen)].UNIT_ID
                    game.rule.dk.monLimit[i] = 0
                end
            end
            htime.setInterval(
                game.rule.dk.fresh,
                function(t2, td2)
                    if (game.runing == false) then
                        htime.delDialog(td2)
                        htime.delTimer(t2)
                        return
                    end
                    for k, v in pairs(game.pathPoint) do
                        if (hplayer.getStatus(hplayer.players[k]) == hplayer.player_status.gaming) then
                            if (game.rule.dk.monLimit[k] < game.rule.dk.perWaveQty) then
                                game.rule.dk.monLimit[k] = game.rule.dk.monLimit[k] + 1
                                local u =
                                    henemy.create(
                                    {
                                        unitId = game.rule.dk.mon[k],
                                        qty = 1,
                                        x = v[1][1],
                                        y = v[1][2],
                                        facing = k * -90 + 180
                                    }
                                )
                                cj.SetUnitPathing(u, false)
                                hattr.set(
                                    u,
                                    0,
                                    {
                                        life = "=" .. (game.rule.dk.monLife[k] * game.rule.dk.wave[k]),
                                        move = "=190"
                                    }
                                )
                                game.rule.dk.monData[u] = {
                                    pathIndex = k
                                }
                                game.currentMon = game.currentMon + 1
                                hevent.onBeDamage(u, enemyBeDamage)
                                hevent.onDead(u, enemyDeadDK)
                                cj.IssuePointOrderById(u, 851986, v[2][1], v[2][2])
                            end
                        end
                    end
                end
            )
        end,
        "请准备好欢乐对抗"
    )
end
MAYBE_AI = {
    --物品的挂
    item = function(playerIndex, it, type)
        if (game.rule.dk.ai == true and his.playing(hplayer.players[playerIndex]) == false) then
            local itId = hitem.getId(it)
            local itemSLK = hslk_global.itemsKV[itId]
            hitem.del(it, 0)
            if (type == "book") then --学书
                local sites = {}
                if (itemSLK.ABILITY_COLOR == "yellow") then
                    sites = {"S", "D"}
                elseif (itemSLK.ABILITY_COLOR == "blue") then
                    sites = {"X", "C", "V"}
                elseif (itemSLK.ABILITY_COLOR == "purple") then
                    sites = {"F"}
                end
                local emptySite = nil
                for k, v in ipairs(sites) do
                    if (game.towersAbilities[playerIndex][v].ABILITY_LEVEL == nil) then
                        if (emptySite == nil) then
                            emptySite = v
                            break
                        end
                    end
                end
                if (emptySite == nil and math.random(1, 2) == 1) then
                    emptySite = table.random(sites)
                end
                if (emptySite ~= nil) then
                    delTowerSkillByBook(
                        game.playerTower[playerIndex],
                        emptySite,
                        game.towersAbilities[playerIndex][emptySite]
                    )
                    local abils = game.thisOptionAbility[itemSLK.INDEX]
                    addTowerSkillByBook(game.playerTower[playerIndex], emptySite, abils[emptySite])
                    if (itemSLK.ABILITY_COLOR == "yellow") then
                        heffect.toUnit("war3mapImported\\eff_burst_round_gold.mdl", game.playerTower[playerIndex], 0)
                    elseif (itemSLK.ABILITY_COLOR == "blue") then
                        heffect.toUnit("war3mapImported\\eff_burst_round.mdl", game.playerTower[playerIndex], 0)
                    elseif (itemSLK.ABILITY_COLOR == "purple") then
                        heffect.toUnit("war3mapImported\\eff_burst_round_purple.mdl", game.playerTower[playerIndex], 0)
                    end
                else
                    hplayer.addGold(hplayer.players[playerIndex], 100)
                end
            elseif (type == "stone") then
                local linkSite = nil
                for i = 1, 4, 1 do
                    local n = hunit.getName(game.playerTowerLink[playerIndex][i].unit)
                    if (n == "空位") then
                        linkSite = i
                        break
                    end
                end
                if (linkSite ~= nil) then
                    --补充空位
                    local u = createMyTowerLink(playerIndex, linkSite, game.towers[itemSLK.INDEX].UNIT_ID)
                    hmsg.echo(
                        hColor.sky(cj.GetPlayerName(hplayer.players[playerIndex])) ..
                            "设置了核心：[" .. hColor.yellow(game.towers[itemSLK.INDEX].Name) .. "]"
                    )
                    addTowerSkillsRaceTeam(playerIndex)
                else
                    local marks = {
                        hunit.getSlk(game.playerTower[playerIndex]).MARK or 0,
                        game.playerTowerLink[playerIndex][1].mark or 0,
                        game.playerTowerLink[playerIndex][2].mark or 0,
                        game.playerTowerLink[playerIndex][3].mark or 0,
                        game.playerTowerLink[playerIndex][4].mark or 0
                    }
                    local min = game.towers[itemSLK.INDEX].MARK
                    local mini = -1
                    for k, v in ipairs(marks) do
                        if (v < min) then
                            min = v
                            mini = k
                            break
                        end
                    end
                    if (mini >= 1 and mini <= 5) then
                        mini = mini - 1
                        if (mini == 0) then
                            local u = createMyTower(playerIndex, game.towers[itemSLK.INDEX].UNIT_ID)
                            hmsg.echo(
                                hColor.sky(cj.GetPlayerName(hplayer.players[playerIndex])) ..
                                    "召唤了兵塔：[" .. hColor.yellow(game.towers[itemSLK.INDEX].Name) .. "]"
                            )
                            addTowerSkillsRaceTeam(playerIndex)
                        else
                            local u = createMyTowerLink(playerIndex, mini, game.towers[itemSLK.INDEX].UNIT_ID)
                            hmsg.echo(
                                hColor.sky(cj.GetPlayerName(hplayer.players[playerIndex])) ..
                                    "设置了核心：[" .. hColor.yellow(game.towers[itemSLK.INDEX].Name) .. "]"
                            )
                            addTowerSkillsRaceTeam(playerIndex)
                        end
                    else
                        --吃石头升级
                        hhero.setCurLevel(
                            game.playerTower[playerIndex],
                            2 + hhero.getCurLevel(game.playerTower[playerIndex]),
                            false
                        )
                    end
                end
            end
        end
    end,
    --信使的挂(不需要考虑计时器重复，因为AI不会换信使)
    courier = function(playerIndex)
        if (game.rule.dk.ai == true and his.playing(hplayer.players[playerIndex]) == false) then
            --装扮
            htime.setTimeout(
                math.random(4, 20),
                function(t, td)
                    htime.delDialog(td)
                    htime.delTimer(t)
                    if (hplayer.getStatus(hplayer.players[playerIndex]) ~= hplayer.player_status.gaming) then
                        return
                    end
                    if (game.playerTowerEffectModel[playerIndex] == nil) then
                        game.playerTowerEffectModel[playerIndex] = {}
                    end
                    local models = {
                        "青龙碧翼套装",
                        "炎炎焚烧套装",
                        "邪鬼怨灵套装",
                        "金碧辉煌套装",
                        "迷幻黑紫套装",
                        "血色炽热套装",
                        "出云剑仙套装"
                    }
                    local turn = math.random(1, #models)
                    hplayer.addGoldRatio(hplayer.players[playerIndex], (8 - turn) * 7, 0)
                    local btnIdx = models[turn]
                    local tips
                    if (btnIdx == "金碧辉煌套装") then
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["金耀翅膀特效"].ABILITY_ID)
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["金耀公正特效"].ABILITY_ID)
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["金耀天堂特效"].ABILITY_ID)
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["金耀精灵特效"].ABILITY_ID)
                        tips = "金耀翅膀、公正光辉、天堂圣音、金色精灵"
                    elseif (btnIdx == "迷幻黑紫套装") then
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["幻黑翅膀特效"].ABILITY_ID)
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["幻黑迷紫特效"].ABILITY_ID)
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["幻黑迷阵特效"].ABILITY_ID)
                        tips = "幻黑翅膀、迷紫幻象、迷惑雾阵"
                    elseif (btnIdx == "血色炽热套装") then
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["血色翅膀特效"].ABILITY_ID)
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["血色漩涡特效"].ABILITY_ID)
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["血色符文特效"].ABILITY_ID)
                        tips = "血色翅膀、赤红漩涡、祭奠符文"
                    elseif (btnIdx == "青龙碧翼套装") then
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["青空之翼特效"].ABILITY_ID)
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["游龙欢悦特效"].ABILITY_ID)
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["青龙吐息特效"].ABILITY_ID)
                        tips = "青空之翼、游龙欢悦、龙腾吐息"
                    elseif (btnIdx == "邪鬼怨灵套装") then
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["邪鬼怨灵特效"].ABILITY_ID)
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["邪鬼阵法特效"].ABILITY_ID)
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["邪鬼符文特效"].ABILITY_ID)
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["邪鬼之眼特效"].ABILITY_ID)
                        tips = "邪鬼怨灵、邪鬼阵法、超度符文、逗趣鬼眼"
                    elseif (btnIdx == "炎炎焚烧套装") then
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["炎炎旋风特效"].ABILITY_ID)
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["炎炎领域特效"].ABILITY_ID)
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["炎炎燃烧特效"].ABILITY_ID)
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["炎炎三球特效"].ABILITY_ID)
                        tips = "炎炎旋风、烧灼圈圈、焚烧之火、鬼马火球"
                    elseif (btnIdx == "出云剑仙套装") then
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["出云飞剑特效"].ABILITY_ID)
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["出云气场特效"].ABILITY_ID)
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["出云飞龙特效"].ABILITY_ID)
                        tips = "盘旋飞剑、灵剑气场、飞龙在天"
                    end
                    if (#game.playerTowerEffectModel[playerIndex] > 0) then
                        for _, v in ipairs(game.playerTowerEffectModel[playerIndex]) do
                            hskill.add(game.playerTower[playerIndex], v, 0)
                        end
                        hmsg.echo(cj.GetPlayerName(hplayer.players[playerIndex]) .. "装扮了：" .. hColor.yellow(tips))
                    end
                end
            )
            --到处乱走
            htime.setInterval(
                math.random(4, 13),
                function(t, td)
                    if (hplayer.getStatus(hplayer.players[playerIndex]) ~= hplayer.player_status.gaming) then
                        htime.delDialog(td)
                        htime.delTimer(t)
                        return
                    end
                    local dist =
                        math.getDistanceBetweenUnit(game.playerCourier[playerIndex], game.playerTower[playerIndex])
                    local deg = math.random(0, 360)
                    local dis = math.random(100, 300)
                    if (dist > 1200) then
                        deg = math.getDegBetweenUnit(game.playerCourier[playerIndex], game.playerTower[playerIndex])
                        dis = math.random(500, 1000)
                    end
                    local xy =
                        math.polarProjection(
                        cj.GetUnitX(game.playerCourier[playerIndex]),
                        cj.GetUnitY(game.playerCourier[playerIndex]),
                        dis,
                        deg
                    )
                    cj.IssuePointOrderById(game.playerCourier[playerIndex], 851986, xy.x, xy.y)
                end
            )
            --技能
            htime.setInterval(
                math.random(5, 8),
                function(t, td)
                    if (hplayer.getStatus(hplayer.players[playerIndex]) ~= hplayer.player_status.gaming) then
                        htime.delDialog(td)
                        htime.delTimer(t)
                        return
                    end
                    local stone = 750
                    local gold = hplayer.getGold(hplayer.players[playerIndex])
                    if (gold >= 50000 and math.random(1, 8) == 4) then
                        hplayer.subGold(hplayer.players[playerIndex], 50000)
                        hhero.setCurLevel(
                            game.playerTower[playerIndex],
                            math.floor(50000 / stone) + 7 + hhero.getCurLevel(game.playerTower[playerIndex]),
                            false
                        )
                    elseif (gold >= 10000 and math.random(1, 7) == 4) then
                        hplayer.subGold(hplayer.players[playerIndex], 10000)
                        hhero.setCurLevel(
                            game.playerTower[playerIndex],
                            math.floor(10000 / stone) + 4 + hhero.getCurLevel(game.playerTower[playerIndex]),
                            false
                        )
                    elseif (gold >= stone and math.random(1, 3) == 2) then
                        local curWave
                        if (game.rule.cur == "yb") then
                            curWave = game.rule.yb.wave
                        elseif (game.rule.cur == "hz") then
                            curWave = game.rule.hz.wave
                        elseif (game.rule.cur == "dk") then
                            curWave = game.rule.dk.wave[playerIndex]
                        end
                        if (curWave ~= nil) then
                            hplayer.subGold(hplayer.players[playerIndex], stone)
                            local targetTPow = getTowerPowLevel(curWave)
                            if (game.thisOptionTowerPowerItem[targetTPow] ~= nil) then
                                local rand = table.random(game.thisOptionTowerPowerItem[targetTPow])
                                local it =
                                    hitem.create(
                                    {
                                        itemId = rand.ITEM_ID,
                                        x = cj.GetUnitX(game.playerCourier[playerIndex]),
                                        y = cj.GetUnitY(game.playerCourier[playerIndex])
                                    }
                                )
                                MAYBE_AI.item(playerIndex, it, "stone")
                            end
                        end
                    elseif (gold >= 7500 and math.random(1, 6) == 4) then
                        --物品
                        local tarTower
                        if (hitem.getEmptySlot(game.playerTower[playerIndex]) > 0) then
                            tarTower = game.playerTower[playerIndex]
                        else
                            for li = 1, 4 do
                                if (hitem.getEmptySlot(game.playerTowerLink[playerIndex][li].unit) > 0) then
                                    tarTower = game.playerTowerLink[playerIndex][li].unit
                                    break
                                end
                            end
                        end
                        local lvT = math.floor(gold / 2000)
                        local lvB = 3
                        local comboIt = {}
                        for cbi = lvB, lvT, 1 do
                            if (game.thisEquipItem[cbi] ~= nil) then
                                for _, civ in pairs(game.thisEquipItem[cbi]) do
                                    table.insert(comboIt, civ)
                                end
                            end
                        end
                        if (tarTower == nil or #comboIt <= 0) then
                            return
                        end
                        local randIt = table.random(comboIt)
                        local tarLv = randIt.LEVEL
                        comboIt = nil
                        hitem.create(
                            {
                                itemId = randIt.ITEM_ID,
                                charges = 1,
                                whichUnit = tarTower
                            }
                        )
                        hplayer.subGold(hplayer.players[playerIndex], tarLv * 1500)
                        tarTower = nil
                    elseif (gold >= 1000 and game.playerTowerLevel[playerIndex] < 9 and math.random(1, 5) == 3) then
                        --天赋
                        hplayer.subGold(hplayer.players[playerIndex], 900)
                        subTowerLevel(playerIndex)
                        addTowerLevel(playerIndex)
                    end
                end
            )
        end
    end,
    --锤子兵
    hammer = function(czb)
        if (game.rule.dk.ai == true) then
            htime.setInterval(
                math.random(15, 20),
                function(t)
                    if (game.runing == false) then
                        htime.delTimer(t)
                        return
                    end
                    local ps = {}
                    hplayer.loop(
                        function(p, pi)
                            if (hplayer.getStatus(p) == hplayer.player_status.gaming) then
                                table.insert(ps, pi)
                            end
                        end
                    )
                    local psi = table.random(ps)
                    if (math.random(1, 2) == 1) then
                        cj.IssueTargetOrder(czb, "thunderbolt", game.playerTower[psi])
                    else
                        cj.IssueTargetOrder(czb, "thunderbolt", game.playerCourier[psi])
                    end
                    ps = nil
                end
            )
        end
    end
}
getNextRect = function(current)
    local next = -1
    local realEnd = 4
    for i = 1, hplayer.qty_max, 1 do
        if (hplayer.player_status.gaming == hplayer.getStatus(hplayer.players[i])) then
            realEnd = i
        end
    end
    for i = 1, hplayer.qty_max, 1 do
        if (hplayer.player_status.gaming == hplayer.getStatus(hplayer.players[i])) then
            if (next == -1) then
                if (current == realEnd or i > current) then
                    next = i
                end
            end
        end
    end
    return next
end
updateMyTower = function(evtData)
    local u = evtData.triggerUnit
    local uid = string.id2char(cj.GetUnitTypeId(u))
    local lv = cj.GetHeroLevel(u)
    local diffLv = cj.I2R(lv - hhero.getPrevLevel(u))
    local slk = hslk_global.unitsKV[uid]
    local tpv = slk.TOWER_POWER
    local attackWhite = slk.ATTACK_WHITE
    local race = slk.RACE
    local percent = 0
    if (tpv == "E") then
        percent = 0.02
    elseif (tpv == "D") then
        percent = 0.024
    elseif (tpv == "C") then
        percent = 0.028
    elseif (tpv == "B") then
        percent = 0.033
    elseif (tpv == "A") then
        percent = 0.042
    elseif (tpv == "S") then
        percent = 0.053
    elseif (tpv == "SS") then
        percent = 0.067
    elseif (tpv == "SSS") then
        percent = 0.081
    end
    attackWhite = diffLv * attackWhite * percent
    hattr.set(
        u,
        0,
        {
            attack_white = "+" .. attackWhite
        }
    )
    if (race == "人类") then
        local val = 0.03
        hattr.set(
            u,
            0,
            {
                str_green = "+" .. (val * slk.STR * diffLv),
                agi_green = "+" .. (val * slk.AGI * diffLv),
                int_green = "+" .. (val * slk.INT * diffLv)
            }
        )
    elseif (race == "人杰") then
        local val = 0.04
        hattr.set(
            u,
            0,
            {
                str_green = "+" .. (val * slk.STR * diffLv),
                agi_green = "+" .. (val * slk.AGI * diffLv),
                int_green = "+" .. (val * slk.INT * diffLv)
            }
        )
    elseif (race == "人王") then
        local val = 0.05
        hattr.set(
            u,
            0,
            {
                str_green = "+" .. (val * slk.STR * diffLv),
                agi_green = "+" .. (val * slk.AGI * diffLv),
                int_green = "+" .. (val * slk.INT * diffLv)
            }
        )
    elseif (race == "兽人") then
        hattr.set(
            u,
            0,
            {
                attack_white = "+" .. (0.075 * slk.ATTACK_WHITE * diffLv)
            }
        )
    elseif (race == "地精") then
        hattr.set(
            u,
            0,
            {
                int_green = "+" .. (0.12 * slk.INT * diffLv)
            }
        )
    elseif (race == "熊猫") then
        hattr.set(
            u,
            0,
            {
                str_green = "+" .. (0.08 * slk.STR * diffLv)
            }
        )
    end
    hsound.sound2Unit(cg.gg_snd_level_up, 100, u)
    htextTag.style(htextTag.create2Unit(u, "升级 ↑" .. cj.R2I(diffLv), 12.00, "ffff00", 1, 2.0, 10.00), "scale", 0, 0.1)
end
createMyTowerLink = function(playerIndex, linkIndex, towerId, unitLv)
    if (playerIndex == nil or linkIndex == nil) then
        print("createMyTowerLink wtf")
        return nil
    end
    if (hplayer.getStatus(hplayer.players[playerIndex]) == hplayer.player_status.gaming) then
        if (game.playerTowerLink[playerIndex] == nil) then
            game.playerTowerLink[playerIndex] = {}
        end
        if (game.playerTowerLink[playerIndex][linkIndex] == nil) then
            game.playerTowerLink[playerIndex][linkIndex] = {}
        end
        local linkId = game.thisUnits["空位"].UNIT_ID
        if (towerId ~= nil) then
            linkId = game.towersShadow[towerId].UNIT_ID
        end
        
        if (game.playerTowerLink[playerIndex][linkIndex] ~= nil) then
            cj.ShowUnit(game.playerTowerLink[playerIndex][linkIndex].unit, false)
        end
        local isUnSelectable = (linkId == game.thisUnits["空位"].UNIT_ID)
        local u =
            hunit.create(
            {
                whichPlayer = hplayer.players[playerIndex],
                unitId = linkId,
                qty = 1,
                x = game.towerPoint[playerIndex][1] + game.towerLinkOffset[linkIndex][1],
                y = game.towerPoint[playerIndex][2] + game.towerLinkOffset[linkIndex][2],
                opacity = 0.4,
                modelScale = 1.0,
                isUnSelectable = isUnSelectable,
                isOpenSlot = true
            }
        )
        hunit.setUserData(u, linkIndex)
        
        if (game.playerTowerLink[playerIndex][linkIndex] ~= nil) then
            hitem.copy(game.playerTowerLink[playerIndex][linkIndex].unit, u)
            hunit.del(game.playerTowerLink[playerIndex][linkIndex].unit, 0)
        else
            hunit.del(game.playerTowerLink[playerIndex][linkIndex].unit, 0)
        end
        game.playerTowerLink[playerIndex][linkIndex].unit = u
        if (towerId ~= nil) then
            game.playerTowerLink[playerIndex][linkIndex].tower_id = towerId
            --属性
            local tpv = hslk_global.unitsKV[towerId].TOWER_POWER
            local Primary = hslk_global.unitsKV[towerId].Primary
            local attack_damage_type = "physical"
            if (Primary == "INT") then
                attack_damage_type = "magic"
            end
            hattr.set(
                u,
                0,
                {
                    attack_damage_type = "=" .. attack_damage_type,
                    move = "=0",
                    damage_rebound_oppose = "=9999"
                }
            )
            hevent.onAttack(u, onTowerAttack)
            hevent.onItemUsed(u, onUnitItemsUesd)
            hevent.onSkillHappen(u, onTowerLinkSkillUesd)
            --兵塔技能
            addTowerSkillsx(u)
            --天赋等级
            if (unitLv == nil) then
                if (math.random(1, 7) == 1) then
                    unitLv = 0
                elseif (math.random(1, 6) == 1) then
                    unitLv = 1
                elseif (math.random(1, 5) == 1) then
                    unitLv = 2
                elseif (math.random(1, 4) == 1) then
                    unitLv = 3
                elseif (math.random(1, 3) == 1) then
                    unitLv = 4
                elseif (math.random(1, 2) == 1) then
                    unitLv = 5
                elseif (math.random(1, 2) == 2) then
                    unitLv = 6
                elseif (math.random(1, 2) == 1) then
                    unitLv = 7
                elseif (math.random(1, 2) == 2) then
                    unitLv = 8
                else
                    unitLv = 9
                end
            end
            game.playerTowerLink[playerIndex][linkIndex].tower_level = unitLv
            game.playerTowerLink[playerIndex][linkIndex].mark = hslk_global.unitsKV[towerId].MARK
            hskill.add(u, game.thisUnitLevelAbilities[unitLv].ABILITY_ID, 0)
            --计算
            hattr.set(
                u,
                0,
                {
                    attack_white = "+" ..
                        math.floor(
                            unitLv * 0.4 * hslk_global.unitsKV[towerId].ATTACK_WHITE +
                                hslk_global.unitsKV[towerId].ATTACK_WHITE
                        )
                }
            )
            --刷新种族个体
            addTowerSkillsRaceSingleAttr(u)
            --移动卡的bug
            cj.TriggerRegisterUnitEvent(game.TRIGGER_DE, u, EVENT_UNIT_ISSUED_POINT_ORDER)
        end
        return u
    end
end
createMyTower = function(playerIndex, towerId, towerLevel)
    if (playerIndex == nil or towerId == nil) then
        print("createMyTower wtf")
        return nil
    end
    if (hplayer.getStatus(hplayer.players[playerIndex]) == hplayer.player_status.gaming) then
        if (game.towersAbilities[playerIndex] == nil) then
            game.towersAbilities[playerIndex] = {}
        end
        local isFirst = false
        if (game.playerTower[playerIndex] == nil) then
            isFirst = true
        end
        
        
        local prevHeroLevel = 1
        local prevHeroLifePercent = 100
        if (isFirst == false) then
            prevHeroLevel = cj.GetHeroLevel(game.playerTower[playerIndex])
            prevHeroLifePercent = hunit.getCurLifePercent(game.playerTower[playerIndex])
            cj.ShowUnit(game.playerTower[playerIndex], false)
        end
        local u =
            hunit.create(
            {
                whichPlayer = hplayer.players[playerIndex],
                unitId = towerId,
                qty = 1,
                x = game.towerPoint[playerIndex][1],
                y = game.towerPoint[playerIndex][2]
            }
        )
        hhero.setIsHero(u, true)
        hunit.setCurLifePercent(u, prevHeroLifePercent)
        --属性
        local tpv = hslk_global.unitsKV[towerId].TOWER_POWER
        local life = 400
        if (tpv == "E") then
            life = 1000
        elseif (tpv == "D") then
            life = 4000
        elseif (tpv == "C") then
            life = 7500
        elseif (tpv == "B") then
            life = 15000
        elseif (tpv == "A") then
            life = 30000
        elseif (tpv == "S") then
            life = 75000
        elseif (tpv == "SS") then
            life = 150000
        elseif (tpv == "SSS") then
            life = 300000
        end
        hattr.set(
            u,
            0,
            {
                move = "=0",
                life = "=" .. life,
                attack_white = "+" .. hslk_global.unitsKV[towerId].ATTACK_WHITE
            }
        )
        hevent.onLevelUp(u, updateMyTower)
        hevent.onAttack(u, onTowerAttack)
        hevent.onDead(u, onTowerDead)
        hhero.setCurLevel(u, prevHeroLevel)
        
        if (game.towersAbilities[playerIndex] ~= nil) then
            for k, v in pairs(game.towersAbilities[playerIndex]) do
                addTowerSkillByBook(u, k, v)
            end
        end
        
        if (game.playerTower[playerIndex] ~= nil) then
            subTowerLevel(playerIndex)
            hitem.copy(game.playerTower[playerIndex], u)
            hunit.del(game.playerTower[playerIndex], 0)
        end
        game.playerTower[playerIndex] = u
        cj.PingMinimapEx(game.towerPoint[playerIndex][1], game.towerPoint[playerIndex][2], 10, 255, 255, 255, true)
        hevent.onItemUsed(u, onUnitItemsUesd)
        --兵塔技能
        addTowerSkillsx(u)
        --天赋等级
        if (isFirst) then
            addTowerLevel(playerIndex, 0)
        else
            addTowerLevel(playerIndex, towerLevel)
        end
        --技能树
        for k, v in pairs(game.thisEmptyAbilities) do
            if (game.towersAbilities[playerIndex][k] == nil) then
                v.Name = "空技能槽"
                v.ABILITY_LEVEL = nil
                addTowerSkillByBook(u, k, v)
            end
        end
        --刷新种族个体
        addTowerSkillsRaceSingleAttr(u)
        --装扮
        if (game.playerTowerEffectModel[playerIndex] ~= nil and #game.playerTowerEffectModel[playerIndex] > 0) then
            for _, v in ipairs(game.playerTowerEffectModel[playerIndex]) do
                hskill.add(u, v, 0)
            end
        end
        --移动卡的bug
        cj.TriggerRegisterUnitEvent(game.TRIGGER_DE, u, EVENT_UNIT_ISSUED_POINT_ORDER)
        return u
    end
end
createMyCourier = function(playerIndex, courierId)
    if (playerIndex == nil or courierId == nil) then
        print("createMyCourier wtf")
        return nil
    end
    if (hplayer.getStatus(hplayer.players[playerIndex]) == hplayer.player_status.gaming) then
        
        if (game.playerCourier[playerIndex] ~= nil) then
            cj.ShowUnit(game.playerCourier[playerIndex], false)
        end
        local x, y
        if (game.playerCourier[playerIndex] ~= nil) then
            x = cj.GetUnitX(game.playerCourier[playerIndex])
            y = cj.GetUnitY(game.playerCourier[playerIndex])
        else
            x = game.courierPoint[playerIndex][1]
            y = game.courierPoint[playerIndex][2]
        end
        local u =
            hunit.create(
            {
                whichPlayer = hplayer.players[playerIndex],
                unitId = courierId,
                qty = 1,
                x = x,
                y = y
            }
        )
        hitem.setAllowSeparate(u)
        hattr.set(
            u,
            0,
            {
                weight = "=1000"
            }
        )
        hevent.onItemUsed(u, onUnitItemsUesd)
        hevent.onSkillHappen(u, onCourierSkillUesd)
        
        if (game.playerCourier[playerIndex] ~= nil) then
            hitem.copy(game.playerCourier[playerIndex], u)
            hunit.del(game.playerCourier[playerIndex], 0)
        end
        --阶级标志
        game.playerCourier[playerIndex] = u
        hcamera.toUnit(hplayer.players[playerIndex], 0.50, u)
        --如果是冰戟剑灵，添加特效
        if (hslk_global.unitsKV[courierId].Name == "冰戟剑灵") then
            heffect.bindUnit("war3mapImported\\eff_flying_sword_ice.mdl", u, "origin", -1)
        end
        --如果是AI模式
        MAYBE_AI.courier(playerIndex)
        return u
    end
end
--玩家离开
hevent.onPlayerLeave(
    function(evtData)
        --evtData.triggerPlayer
        --对战的话，检查是否胜利
        if (game.rule.cur == "dk") then
            local isWin = 0
            local winner
            hplayer.loop(
                function(p, pi)
                    if (hplayer.getStatus(p) == hplayer.player_status.gaming) then
                        isWin = isWin + 1
                        winner = p
                    end
                end
            )
            if (isWin == 1) then
                game.runing = false
                dzSetPrestige(winner, false, true)
                hmark.create("war3mapImported\\mark_win.blp", 4.00, winner)
                hplayer.setStatus(winner, "胜利")
                htime.setTimeout(
                    10.00,
                    function(t, td)
                        htime.delDialog(td)
                        htime.delTimer(t)
                        hplayer.victory(winner)
                    end
                )
            end
        end
    end
)
--兵塔命令控制
game.TRIGGER_DE = cj.CreateTrigger()
cj.TriggerAddAction(
    game.TRIGGER_DE,
    function()
        if (cj.GetIssuedOrderId() == 851971 or cj.GetIssuedOrderId() == 851986) then
            local index = hplayer.index(cj.GetOwningPlayer(cj.GetTriggerUnit()))
            cj.IssuePointOrderById(
                cj.GetTriggerUnit(),
                851983,
                cj.GetUnitX(cj.GetTriggerUnit()),
                cj.GetUnitY(cj.GetTriggerUnit())
            )
        end
    end
)
--兵塔位置控制
htime.setInterval(
    60,
    function()
        hplayer.loop(
            function(p, pi)
                if (game.playerTower[pi] ~= nil) then
                    cj.SetUnitPosition(game.playerTower[pi], game.towerPoint[pi][1], game.towerPoint[pi][2])
                end
                for i = 1, 4, 1 do
                    if (game.playerTowerLink[pi] ~= nil and game.playerTowerLink[pi][i] ~= nil) then
                        local x = game.towerPoint[pi][1] + game.towerLinkOffset[i][1]
                        local y = game.towerPoint[pi][2] + game.towerLinkOffset[i][2]
                        cj.SetUnitPosition(game.playerTowerLink[pi][i].unit, x, y)
                    end
                end
            end
        )
    end
)
dzSetLumber = function(p, curWave)
    local lv = hdzapi.mapLv(p)
    if (lv == nil or lv < 1) then
        lv = 1
    end
    hdzapi.server.set.int(p, "lumber", hplayer.getLumber(p) + curWave + lv)
end
dzSetPrestige = function(p, iscs, isss)
    local cs = hdzapi.server.get.int(p, "prestigecs")
    local ss = hdzapi.server.get.int(p, "prestigess")
    if (iscs) then
        cs = cs + 1
        hdzapi.server.set.int(p, "prestigecs", cs)
        hdzapi.setRoomStat(p, "prestigecs", cs)
    end
    if (isss) then
        if (htime.count >= 300) then
            ss = ss + 1
            hdzapi.server.set.int(p, "prestigess", ss)
            hdzapi.setRoomStat(p, "prestigess", ss)
            local playerIndex = hplayer.index(p)
            dzSetLumber(p, 100 + game.rule.dk.wave[playerIndex])
        else
            hmsg.echo00(p, hColor.green("温馨提示：由于本局游戏时间过短，本局的胜负不会被记录"))
        end
    end
    local prestige
    if (cs >= 500 and ss >= 100) then
        prestige = "九天至尊"
    elseif (cs >= 300 and ss >= 75) then
        prestige = "六道大仙"
    elseif (cs >= 200 and ss >= 50) then
        prestige = "神游三界"
    elseif (cs >= 150 and ss >= 25) then
        prestige = "灭劫星窍"
    elseif (cs >= 125 and ss >= 15) then
        prestige = "灵通三魂"
    elseif (cs >= 100 and ss >= 13) then
        prestige = "身越七魄"
    elseif (cs >= 90 and ss >= 11) then
        prestige = "超凡入圣"
    elseif (cs >= 80 and ss >= 9) then
        prestige = "超然世外"
    elseif (cs >= 70 and ss >= 7) then
        prestige = "猎尽天下"
    elseif (cs >= 60 and ss >= 5) then
        prestige = "登峰造极"
    elseif (cs >= 50 and ss >= 3) then
        prestige = "当世雄豪"
    elseif (cs >= 40 and ss >= 2) then
        prestige = "名扬四方"
    elseif (cs >= 30 and ss >= 1) then
        prestige = "一战成名"
    elseif (cs >= 20 and ss >= 0) then
        prestige = "游刃有余"
    elseif (cs >= 10 and ss >= 0) then
        prestige = "初露锋芒"
    elseif (cs >= 5 and ss >= 0) then
        prestige = "略有小成"
    else
        prestige = "初出茅庐"
    end
    hplayer.setPrestige(p, prestige)
    hdzapi.setRoomStat(p, "prestige", prestige)
end
local startTrigger = cj.CreateTrigger()
cj.TriggerRegisterTimerEvent(startTrigger, 1.0, false)
cj.TriggerAddAction(
    startTrigger,
    function()
        cj.DisableTrigger(cj.GetTriggeringTrigger())
        cj.DestroyTrigger(cj.GetTriggeringTrigger())
        --[[
            这里开始游戏正式开始了
            发挥你的想象力吧~
        ]]
        cj.FogEnable(false)
        cj.FogMaskEnable(false)
        hsound.bgmStop(nil)
        --
        for i = 1, hplayer.qty_max, 1 do
            local l = hdzapi.server.get.int(hplayer.players[i], "lumber")
            if (l == nil) then
                l = 0
            end
            game.playerOriginLumber[i] = l
            hplayer.setLumber(hplayer.players[i], l)
            hmsg.echo00(hplayer.players[i], "^_^ 根据你的地图等级和游玩次数，你得到了" .. hColor.green(l) .. "个木头")
            dzSetPrestige(hplayer.players[i], true, false)
        end
        htime.setInterval(
            5,
            function()
                for i = 1, hplayer.qty_max, 1 do
                    if
                        (his.playing(hplayer.players[i]) == true and his.playerSite(hplayer.players[i]) == true and
                            hplayer.getLumber(hplayer.players[i]) > game.playerOriginLumber[i])
                     then
                        hplayer.defeat(hplayer.players[i], "网络不稳定")
                        htime.setTimeout(
                            5.00,
                            function()
                                hmsg.echo(cj.GetPlayerName(hplayer.players[i]) .. "作弊了哦~系统干掉它了~")
                            end
                        )
                    end
                end
            end
        )
        --设置三围基础
        hattr.setThreeBuff(
            {
                str = {
                    life = 7,
                    attack_white = 0.06,
                    toughness = 0.02,
                    aim = 0.003
                },
                agi = {
                    attack_white = 0.10,
                    attack_speed = 0.015,
                    avoid = 0.005
                },
                int = {
                    attack_white = 0.08,
                    resistance = 0.005
                }
            }
        )
        local TITLE_YB = "轻松百波（新手推荐）"
        local TITLE_HZ = "无尽挑战（刷木推荐）"
        local TITLE_DK = "欢乐对抗（基友推荐）"
        local TITLE_DKAI = "欢乐对抗（AI模式）"
        local btns = {
            TITLE_YB,
            TITLE_HZ
        }
        if (hplayer.qty_current <= 1) then
            table.insert(btns, TITLE_DKAI)
        else
            table.insert(btns, TITLE_DK)
        end
        
        hmsg.echo("第一个玩家正在选择（游戏模式）", 10)
        hdialog.create(
            nil,
            {
                title = "选择游戏模式",
                buttons = btns
            },
            function(btnIdx)
                hmsg.echo("选择了" .. btnIdx)
                if (btnIdx == TITLE_YB) then
                    game.rule.cur = "yb"
                    hmsg.echo("|cffffff00各玩家合力打怪，打不过的会流到下一位玩家继续攻击，所有玩家都打不过就会扣除“大精灵”的生命，坚持100波胜利|r")
                    hsound.bgm(cg.gg_snd_bgm_hz, nil)
                    
                    local bigElf =
                        hunit.create(
                        {
                            whichPlayer = game.ALLY_PLAYER,
                            unitId = game.thisUnits["大精灵"].UNIT_ID,
                            qty = 1,
                            x = 0,
                            y = 0
                        }
                    )
                    hevent.onDead(
                        bigElf,
                        function()
                            game.runing = false
                            hmsg.echo("不！“大精灵”GG了，结束啦~我们的守护")
                            hmark.create("war3mapImported\\mark_defeat.blp", 4.00)
                            htime.setTimeout(
                                10.00,
                                function(t, td)
                                    htime.delDialog(td)
                                    htime.delTimer(t)
                                    for i = 1, hplayer.qty_max, 1 do
                                        hplayer.defeat(hplayer.players[i], "再见~")
                                    end
                                end,
                                "准备退出"
                            )
                        end
                    )
                    cj.PingMinimapEx(x, y, 10, 255, 0, 0, false)
                    
                    for k, v in ipairs(game.pathPoint) do
                        for i, p in ipairs(v) do
                            local r = hrect.create(p[1], p[2], 100, 100, "rect" .. k .. i)
                            local tg = cj.CreateTrigger()
                            bj.TriggerRegisterEnterRectSimple(tg, r)
                            cj.TriggerAddAction(
                                tg,
                                function()
                                    if (his.enemyPlayer(cj.GetTriggerUnit(), game.ALLY_PLAYER)) then
                                        if (i == #v) then
                                            
                                            local uVal = cj.GetUnitUserData(cj.GetTriggerUnit())
                                            if (uVal >= hplayer.qty_current - 1) then
                                                heffect.toUnit(
                                                    "Abilities\\Spells\\NightElf\\shadowstrike\\shadowstrike.mdl",
                                                    cj.GetTriggerUnit(),
                                                    1
                                                )
                                                if (his.alive(bigElf)) then
                                                    local slk = hunit.getSlk(cj.GetTriggerUnit())
                                                    local type = slk.TYPE
                                                    local huntDmg = 0
                                                    if (type == "boss") then
                                                        huntDmg = 3 * game.rule.yb.wave
                                                    elseif (type == "normal") then
                                                        huntDmg = game.rule.yb.wave
                                                    end
                                                    if (huntDmg > 0) then
                                                        hmsg.echo(
                                                            hColor.yellow(hunit.getName(cj.GetTriggerUnit())) ..
                                                                "造成了" .. hColor.red(huntDmg) .. "伤害"
                                                        )
                                                        heffect.toUnit(
                                                            "Abilities\\Spells\\Other\\Doom\\DoomDeath.mdl",
                                                            bigElf,
                                                            1
                                                        )
                                                        hunit.subCurLife(bigElf, huntDmg)
                                                        cj.PingMinimapEx(x, y, 10, 255, 0, 0, false)
                                                        htextTag.style(
                                                            htextTag.create2Unit(
                                                                bigElf,
                                                                "-" ..
                                                                    huntDmg ..
                                                                        " " ..
                                                                            game.bigElfTips[
                                                                                cj.GetRandomInt(1, #game.bigElfTips)
                                                                            ],
                                                                10.00,
                                                                "ff0000",
                                                                1,
                                                                1.1,
                                                                50.00
                                                            ),
                                                            "scale",
                                                            0,
                                                            0.05
                                                        )
                                                    end
                                                end
                                                hunit.del(cj.GetTriggerUnit(), 0)
                                                game.currentMon = game.currentMon - 1
                                            else
                                                cj.SetUnitUserData(cj.GetTriggerUnit(), uVal + 1)
                                                heffect.bindUnit(
                                                    "Abilities\\Spells\\Orc\\FeralSpirit\\feralspiritdone.mdl",
                                                    cj.GetTriggerUnit(),
                                                    "origin",
                                                    2
                                                )
                                                local next = getNextRect(k)
                                                if (next == -1) then
                                                    hunit.del(cj.GetTriggerUnit(), 0)
                                                    game.currentMon = game.currentMon - 1
                                                    return
                                                else
                                                    cj.SetUnitPosition(
                                                        cj.GetTriggerUnit(),
                                                        game.pathPoint[next][1][1],
                                                        game.pathPoint[next][1][2]
                                                    )
                                                    cj.IssuePointOrderById(
                                                        cj.GetTriggerUnit(),
                                                        851986,
                                                        game.pathPoint[next][2][1],
                                                        game.pathPoint[next][2][2]
                                                    )
                                                end
                                            end
                                        else
                                            
                                            cj.IssuePointOrderById(
                                                cj.GetTriggerUnit(),
                                                851986,
                                                v[i + 1][1],
                                                v[i + 1][2]
                                            )
                                        end
                                    end
                                end
                            )
                        end
                    end
                    enemyGenYB(15)
                    hleaderBoard.create(
                        "yb",
                        1,
                        function(bl)
                            local bigElfLife = "GG"
                            if (his.alive(bigElf)) then
                                bigElfLife =
                                    hColor.white(math.floor(hunit.getCurLife(bigElf))) ..
                                    "/" .. math.floor(hunit.getMaxLife(bigElf))
                            end
                            hleaderBoard.setTitle(bl, "百波战力榜[" .. game.rule.yb.wave .. "波][精灵 " .. bigElfLife .. "]")
                            local data = {}
                            hplayer.loop(
                                function(p, pi)
                                    data[pi] = math.floor(0.3 * hplayer.getKill(p))
                                end
                            )
                            return data
                        end
                    )
                elseif (btnIdx == TITLE_HZ) then
                    game.rule.cur = "hz"
                    hmsg.echo("|cffffff00各玩家合力打怪，打不过的会流到下一位玩家继续攻击，所有玩家都打不过就会扣除“光辉城主”的生命，玩到死机为止！|r")
                    hsound.bgm(cg.gg_snd_bgm_hz, nil)
                    local bigElf =
                        hunit.create(
                        {
                            whichPlayer = game.ALLY_PLAYER,
                            unitId = game.thisUnits["光辉城主"].UNIT_ID,
                            qty = 1,
                            x = 0,
                            y = 0
                        }
                    )
                    hevent.onDead(
                        bigElf,
                        function()
                            game.runing = false
                            hmsg.echo("不！“光辉城主”GG了，还没死机就结束啦~我们的守护")
                            hmark.create("war3mapImported\\mark_defeat.blp", 4.00)
                            htime.setTimeout(
                                10.00,
                                function(t, td)
                                    htime.delDialog(td)
                                    htime.delTimer(t)
                                    for i = 1, hplayer.qty_max, 1 do
                                        hplayer.defeat(hplayer.players[i], "再见~")
                                    end
                                end,
                                "准备退出"
                            )
                        end
                    )
                    cj.PingMinimapEx(x, y, 10, 255, 0, 0, false)
                    
                    for k, v in ipairs(game.pathPoint) do
                        for i, p in ipairs(v) do
                            local r = hrect.create(p[1], p[2], 100, 100, "rect" .. k .. i)
                            local tg = cj.CreateTrigger()
                            bj.TriggerRegisterEnterRectSimple(tg, r)
                            cj.TriggerAddAction(
                                tg,
                                function()
                                    if (his.enemyPlayer(cj.GetTriggerUnit(), game.ALLY_PLAYER)) then
                                        if (i == #v) then
                                            
                                            local uVal = cj.GetUnitUserData(cj.GetTriggerUnit())
                                            if (uVal >= hplayer.qty_current - 1) then
                                                heffect.toUnit(
                                                    "Abilities\\Spells\\NightElf\\shadowstrike\\shadowstrike.mdl",
                                                    cj.GetTriggerUnit(),
                                                    1
                                                )
                                                if (his.alive(bigElf)) then
                                                    local slk = hunit.getSlk(cj.GetTriggerUnit())
                                                    local type = slk.TYPE
                                                    local huntDmg = 0
                                                    if (type == "boss") then
                                                        huntDmg = 3 * game.rule.hz.wave
                                                    elseif (type == "normal") then
                                                        huntDmg = game.rule.hz.wave
                                                    end
                                                    if (huntDmg > 0) then
                                                        hmsg.echo(
                                                            hColor.yellow(hunit.getName(cj.GetTriggerUnit())) ..
                                                                "造成了" .. hColor.red(huntDmg) .. "伤害"
                                                        )
                                                        heffect.toUnit(
                                                            "Abilities\\Spells\\Other\\Doom\\DoomDeath.mdl",
                                                            bigElf,
                                                            1
                                                        )
                                                        hunit.subCurLife(bigElf, huntDmg)
                                                        cj.PingMinimapEx(x, y, 10, 255, 0, 0, false)
                                                        htextTag.style(
                                                            htextTag.create2Unit(
                                                                bigElf,
                                                                "-" ..
                                                                    game.rule.hz.wave ..
                                                                        " " ..
                                                                            game.bigElfTips[
                                                                                cj.GetRandomInt(1, #game.bigElfTips)
                                                                            ],
                                                                10.00,
                                                                "ff0000",
                                                                1,
                                                                1.1,
                                                                50.00
                                                            ),
                                                            "scale",
                                                            0,
                                                            0.05
                                                        )
                                                    end
                                                end
                                                hunit.del(cj.GetTriggerUnit(), 0)
                                                game.currentMon = game.currentMon - 1
                                            else
                                                cj.SetUnitUserData(cj.GetTriggerUnit(), uVal + 1)
                                                heffect.bindUnit(
                                                    "Abilities\\Spells\\Orc\\FeralSpirit\\feralspiritdone.mdl",
                                                    cj.GetTriggerUnit(),
                                                    "origin",
                                                    2
                                                )
                                                local next = getNextRect(k)
                                                if (next == -1) then
                                                    hunit.del(cj.GetTriggerUnit(), 0)
                                                    game.currentMon = game.currentMon - 1
                                                    return
                                                else
                                                    cj.SetUnitPosition(
                                                        cj.GetTriggerUnit(),
                                                        game.pathPoint[next][1][1],
                                                        game.pathPoint[next][1][2]
                                                    )
                                                    cj.IssuePointOrderById(
                                                        cj.GetTriggerUnit(),
                                                        851986,
                                                        game.pathPoint[next][2][1],
                                                        game.pathPoint[next][2][2]
                                                    )
                                                end
                                            end
                                        else
                                            
                                            cj.IssuePointOrderById(
                                                cj.GetTriggerUnit(),
                                                851986,
                                                v[i + 1][1],
                                                v[i + 1][2]
                                            )
                                        end
                                    end
                                end
                            )
                        end
                    end
                    enemyGenHZ(15)
                    hleaderBoard.create(
                        "hz",
                        1,
                        function(bl)
                            local bigElfLife = "GG"
                            if (his.alive(bigElf)) then
                                bigElfLife =
                                    hColor.white(math.floor(hunit.getCurLife(bigElf))) ..
                                    "/" .. math.floor(hunit.getMaxLife(bigElf))
                            end
                            hleaderBoard.setTitle(bl, "无尽战力榜[" .. game.rule.hz.wave .. "波][城主 " .. bigElfLife .. "]")
                            local data = {}
                            hplayer.loop(
                                function(p, pi)
                                    data[pi] = math.floor(0.3 * hplayer.getKill(p))
                                end
                            )
                            return data
                        end
                    )
                elseif (btnIdx == TITLE_DK or TITLE_DKAI) then
                    game.rule.cur = "dk"
                    if (btnIdx == TITLE_DKAI) then
                        game.rule.dk.ai = true
                        hmsg.echo("|cffffff00各玩家独立出怪升级，阶段升级时创建与兵塔相关的士兵顺时针攻击其他玩家，对抗不过的玩家会被扣血直至出局[AI不开挂]|r")
                    else
                        hmsg.echo("|cffffff00各玩家独立出怪升级，阶段升级时创建与兵塔相关的士兵顺时针攻击其他玩家，对抗不过的玩家会被扣血直至出局|r")
                    end
                    hsound.bgm(cg.gg_snd_bgm_dk, nil)
                    
                    for k, v in ipairs(game.pathPoint) do
                        for i, p in ipairs(v) do
                            local r = hrect.create(p[1], p[2], 175, 175, "rect" .. k .. i)
                            local tg = cj.CreateTrigger()
                            bj.TriggerRegisterEnterRectSimple(tg, r)
                            cj.TriggerAddAction(
                                tg,
                                function()
                                    local u = cj.GetTriggerUnit()
                                    if (his.enemyPlayer(u, game.ALLY_PLAYER)) then
                                        local playerIndex = hunit.getUserData(u)
                                        if (i == #v) then
                                            local slk = hunit.getSlk(u)
                                            local type = slk.TYPE
                                            
                                            local next = getNextRect(k)
                                            if (next == -1) then
                                                hunit.del(u)
                                                game.currentMon = game.currentMon - 1
                                                return
                                            else
                                                if (type == "tower_shadow") then
                                                    local wanbao = false
                                                    if (next == playerIndex) then
                                                        hunit.del(u, 0)
                                                        game.currentMon = game.currentMon - 1
                                                        wanbao = true
                                                    else
                                                        cj.SetUnitPosition(
                                                            u,
                                                            game.pathPoint[next][1][1],
                                                            game.pathPoint[next][1][2]
                                                        )
                                                        cj.IssuePointOrderById(
                                                            u,
                                                            851986,
                                                            game.pathPoint[next][2][1],
                                                            game.pathPoint[next][2][2]
                                                        )
                                                    end
                                                    if
                                                        (hplayer.getStatus(hplayer.players[k]) ==
                                                            hplayer.player_status.gaming)
                                                     then
                                                        local hunt =
                                                            15 * game.rule.dk.wave[playerIndex] +
                                                            2 * hhero.getCurLevel(game.playerTower[playerIndex])
                                                        if (hunt >= hunit.getCurLife(game.playerTower[k])) then
                                                            hunit.kill(game.playerTower[k], 0)
                                                            hmsg.echo(
                                                                hColor.sky(cj.GetPlayerName(hplayer.players[k])) ..
                                                                    "被" ..
                                                                        hColor.sky(
                                                                            cj.GetPlayerName(
                                                                                hplayer.players[playerIndex]
                                                                            )
                                                                        ) ..
                                                                            "的" ..
                                                                                hColor.yellow(slk.Name) .. "进攻，直接战败了~"
                                                            )
                                                        else
                                                            hunit.subCurLife(game.playerTower[k], hunt)
                                                            hmsg.echo(
                                                                hColor.sky(cj.GetPlayerName(hplayer.players[k])) ..
                                                                    "被" ..
                                                                        hColor.sky(
                                                                            cj.GetPlayerName(
                                                                                hplayer.players[playerIndex]
                                                                            )
                                                                        ) ..
                                                                            "的" ..
                                                                                hColor.yellow(slk.Name) ..
                                                                                    "进攻，扣了" .. hColor.red(hunt) .. "血"
                                                            )
                                                            heffect.toUnit(
                                                                "Abilities\\Spells\\Other\\Doom\\DoomDeath.mdl",
                                                                game.playerTower[k],
                                                                1
                                                            )
                                                            htextTag.style(
                                                                htextTag.create2Unit(
                                                                    game.playerTower[k],
                                                                    "-" .. hunt,
                                                                    10.00,
                                                                    "ff0000",
                                                                    1,
                                                                    1.1,
                                                                    50.00
                                                                ),
                                                                "scale",
                                                                0,
                                                                0.05
                                                            )
                                                        end
                                                    end
                                                    if (wanbao) then
                                                        hsound.sound(cg.gg_snd_wb)
                                                        hmsg.echo(
                                                            hColor.green(cj.GetPlayerName(hplayer.players[playerIndex])) ..
                                                                hColor.yellow("实现了一圈完美进攻！！完爆其余玩家！！真·牛逼！！！")
                                                        )
                                                    end
                                                else
                                                    cj.SetUnitPosition(
                                                        u,
                                                        game.pathPoint[next][1][1],
                                                        game.pathPoint[next][1][2]
                                                    )
                                                    cj.IssuePointOrderById(
                                                        u,
                                                        851986,
                                                        game.pathPoint[next][2][1],
                                                        game.pathPoint[next][2][2]
                                                    )
                                                end
                                            end
                                        else
                                            
                                            cj.IssuePointOrderById(
                                                cj.GetTriggerUnit(),
                                                851986,
                                                v[i + 1][1],
                                                v[i + 1][2]
                                            )
                                        end
                                    end
                                end
                            )
                        end
                    end
                    enemyGenDK(30)
                    local bldk =
                        hleaderBoard.create(
                        "dk",
                        1,
                        function(bl)
                            local data = {}
                            hplayer.loop(
                                function(p, pi)
                                    local mark = ((game.rule.dk.wave[pi] or 1) - 1) * 31
                                    mark = mark + hhero.getCurLevel(game.playerTower[pi]) - 1
                                    mark = mark + (game.rule.dk.monLimit[pi] or 0)
                                    data[pi] = mark
                                end
                            )
                            return data
                        end
                    )
                    hleaderBoard.setTitle(bldk, "欢乐对抗战绩榜")
                    htime.setInterval(
                        60,
                        function()
                            local top = hleaderBoard.top(bldk)
                            if (top ~= nil) then
                                local gold = game.rule.dk.wave[hplayer.index(top)] * 30
                                hplayer.addGold(top, gold)
                                hmsg.echo(
                                    hColor.yellow("(。・∀・)ノ" .. hplayer.getName(top)) ..
                                        "勇夺第一，获得" .. hColor.yellow(gold) .. "黄金奖励"
                                )
                            end
                        end
                    )
                end
                
                for k, v in pairs(game.courierPoint) do
                    local u
                    if (game.rule.dk.ai == true and his.playing(hplayer.players[k]) == false) then
                        hplayer.setStatus(hplayer.players[k], hplayer.player_status.gaming)
                        cj.SetPlayerName(hplayer.players[k], "AI#" .. k)
                        u = createMyCourier(k, game.courier["涅磐火凤凰"].UNIT_ID)
                    else
                        u = createMyCourier(k, game.courier["呆萌的青蛙"].UNIT_ID)
                        if (u ~= nil and hdzapi.hasMallItem(hplayer.players[k], "PHOENIX") == true) then
                            hitem.create(
                                {
                                    itemId = game.courierItem["涅磐火凤凰"].ITEM_ID,
                                    whichUnit = u
                                }
                            )
                        end
                        if (u ~= nil and hdzapi.hasMallItem(hplayer.players[k], "ICEMON") == true) then
                            hitem.create(
                                {
                                    itemId = game.courierItem["冰戟剑灵"].ITEM_ID,
                                    whichUnit = u
                                }
                            )
                        end
                        if (u ~= nil) then
                            hitem.create(
                                {
                                    itemId = game.effectModelItem["超次元套装礼包"].ITEM_ID,
                                    whichUnit = u
                                }
                            )
                        end
                    end
                end
                
                for k, v in pairs(game.towerPoint) do
                    createMyTower(k, game.towers["人类·农民_1"].UNIT_ID)
                    addTowerSkillsRaceTeam(k)
                end
                
                for k, v in pairs(game.towerLinkOffset) do
                    for i = 1, 4 do
                        createMyTowerLink(k, i)
                    end
                end
                --创建多面板
                hmultiBoard.create(
                    "player",
                    1.5,
                    function(mb, curPi)
                        --拼凑多面板数据，二维数组，行列模式
                        hmultiBoard.setTitle(mb, "玩家兵塔属性列表，地上怪物：" .. game.currentMon .. "只")
                        --开始当然是title了
                        local data = {}
                        local titData = {
                            {value = "大佬", icon = "ReplaceableTextures\\CommandButtons\\BTNRiderlessHorse.blp"},
                            {value = "称号", icon = "ReplaceableTextures\\CommandButtons\\BTNDivineIntervention.blp"},
                            {value = "状态", icon = "ReplaceableTextures\\CommandButtons\\BTNWellSpring.blp"},
                            {value = "兵塔", icon = "ReplaceableTextures\\CommandButtons\\BTNHumanBarracks.blp"},
                            {value = "等级", icon = "ReplaceableTextures\\CommandButtons\\BTNAltarOfKings.blp"},
                            {value = "天赋", icon = "ReplaceableTextures\\CommandButtons\\BTNDivineIntervention.blp"},
                            {value = "攻击", icon = "ReplaceableTextures\\CommandButtons\\BTNThoriumMelee.blp"},
                            {
                                value = "攻速",
                                icon = "ReplaceableTextures\\CommandButtons\\BTNImprovedUnholyStrength.blp"
                            },
                            {value = "增幅", icon = "ReplaceableTextures\\CommandButtons\\BTNControlMagic.blp"}
                        }
                        if (game.rule.cur == "dk") then
                            titData =
                                table.merge(
                                titData,
                                {
                                    {value = "护甲", icon = "ReplaceableTextures\\CommandButtons\\BTNHumanArmorUpOne.blp"},
                                    {
                                        value = "减伤",
                                        icon = "ReplaceableTextures\\CommandButtons\\BTNStoneArchitecture.blp"
                                    },
                                    {
                                        value = "魔抗",
                                        icon = "ReplaceableTextures\\CommandButtons\\BTNSorceressMaster.blp"
                                    },
                                    {
                                        value = "反伤",
                                        icon = "ReplaceableTextures\\CommandButtons\\BTNDefend.blp"
                                    },
                                    {value = "回避", icon = "ReplaceableTextures\\CommandButtons\\BTNEnchantedCrows.blp"}
                                }
                            )
                        end
                        if (game.rule.dk.ai == true) then
                            titData =
                                table.merge(
                                titData,
                                {
                                    {value = "黄金", icon = "ReplaceableTextures\\CommandButtons\\BTNChestOfGold.blp"}
                                }
                            )
                        end
                        table.insert(data, titData)
                        --然后是form
                        for pi = 1, hplayer.qty_max, 1 do
                            local p = hplayer.players[pi]
                            if (his.playing(p) or game.rule.dk.ai == true) then
                                local tower = "-"
                                local avatar = nil
                                local name = "-"
                                local attack = "-"
                                local attack_speed = "-"
                                local damage_extent = "-"
                                local tlv = "-"
                                if (hplayer.getStatus(p) == hplayer.player_status.gaming) then
                                    tower = game.playerTower[pi]
                                    avatar = hunit.getAvatar(tower)
                                    name = hunit.getName(tower)
                                    attack =
                                        math.floor(hattr.get(tower, "attack_white") + hattr.get(tower, "attack_green"))
                                    attack_speed = math.round(hattr.get(tower, "attack_speed")) .. "%"
                                    damage_extent = math.round(hattr.get(tower, "damage_extent")) .. "%"
                                    tlv = "Lv." .. hhero.getCurLevel(tower)
                                end
                                local tempData = {
                                    {value = cj.GetPlayerName(p), icon = nil},
                                    {value = hplayer.getPrestige(p), icon = nil},
                                    {value = hplayer.getStatus(p), icon = nil},
                                    {value = name, icon = avatar},
                                    {value = tlv, icon = nil},
                                    {value = game.playerTowerLevel[pi], icon = nil},
                                    {value = attack, icon = nil},
                                    {value = attack_speed, icon = nil},
                                    {value = damage_extent, icon = nil}
                                }
                                if (game.rule.cur == "dk") then
                                    local defend = "-"
                                    local toughness = "-"
                                    local resistance = "-"
                                    local damage_rebound = "-"
                                    local avoid = "-"
                                    if (hplayer.getStatus(p) == hplayer.player_status.gaming) then
                                        defend = math.floor(hattr.get(tower, "defend"))
                                        toughness = math.round(hattr.get(tower, "toughness"))
                                        resistance = math.round(hattr.get(tower, "resistance")) .. "%"
                                        damage_rebound = math.round(hattr.get(tower, "damage_rebound")) .. "%"
                                        avoid = math.round(hattr.get(tower, "avoid")) .. "%"
                                    end
                                    tempData =
                                        table.merge(
                                        tempData,
                                        {
                                            {value = defend, icon = nil},
                                            {value = toughness, icon = nil},
                                            {value = resistance, icon = nil},
                                            {value = damage_rebound, icon = nil},
                                            {value = avoid, icon = nil}
                                        }
                                    )
                                end
                                if (game.rule.dk.ai == true) then
                                    tempData =
                                        table.merge(
                                        tempData,
                                        {
                                            {value = math.floor(hplayer.getGold(p)), icon = nil}
                                        }
                                    )
                                end
                                table.insert(data, tempData)
                            end
                        end
                        return data
                    end
                )
            end
        )
    end
)
