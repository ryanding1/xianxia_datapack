execute if score #enabled debug matches 1 run tellraw @a {"text":"xianxia posture loaded"}

scoreboard objectives add xx_post_cfg dummy
scoreboard objectives add xx_posture dummy
scoreboard objectives add xx_post_max dummy
scoreboard objectives add xx_post_cd dummy
scoreboard objectives add xx_post_delay dummy
scoreboard objectives add xx_post_break dummy
scoreboard objectives add xx_post_delta dummy
scoreboard objectives add xx_post_bucket dummy
scoreboard objectives add xx_post_handled dummy
scoreboard objectives add xx_hp dummy
scoreboard objectives add xx_hp_prev dummy
scoreboard objectives add xx_hp_delta dummy
scoreboard objectives add xx_hp_seen dummy
scoreboard objectives add xx_hurt dummy
scoreboard objectives add xx_hurt_prev dummy
scoreboard objectives add xx_flash dummy
scoreboard objectives add xx_post_prev dummy
scoreboard objectives add xx_post_idle dummy
scoreboard objectives add xx_deaths minecraft.custom:minecraft.deaths
scoreboard objectives add xx_deaths_seen dummy

function xianxia:posture/config
