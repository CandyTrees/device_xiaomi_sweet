#
# AxionAOSP-specific Flags
#
# Maintainer name (use "_" for spaces, e.g., "rmp_22" → "rmp 22" in UI)
AXION_MAINTAINER := therealmharc

# Processor name (underscores become spaces)
AXION_PROCESSOR := Snapdragon_732G_(8_nm)

# Define front camera specs
AXION_CAMERA_FRONT_INFO := 16

# Blur
TARGET_ENABLE_BLUR := true

# Bypass Charge
BYPASS_CHARGE_SUPPORTED := false

# AxionFx
TARGET_INCLUDE_AXFX := false

# Bootanimation
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 2400

# Lineage SDK
TARGET_DISABLE_LINEAGE_SDK := false

# EPPE (Enhanced Power Policy Engine)
TARGET_DISABLE_EPPE := true

# safely disable libperfmgr without breaking boot (set to true)
TARGET_DISABLES_LIBPERF := false

# Targets
TORCH_STR_SUPPORTED := true
TARGET_ENABLES_IMS_OVERRIDES := true
TARGET_TOUCH_BOOST_SUPPORTED := true

# refresh rate list (optional) - defining this flags makes the controller skip the parsing of Display.Mode refresh rates
# for supported refresh rates. The refresh rate controller will also assume that all the defined refresh rates are "supported"
TARGET_SUPPORTED_REFRESH_RATES := 60,90,120
