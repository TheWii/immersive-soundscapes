tag @s[type=player] add immersive.fix
function immersive:uninstall
function immersive:install

execute if entity @s[type=player] if score $installed twis.data matches 1 run tellraw @a[tag=!global.ignore,tag=!global.ignore.gui] [{"text":"[Datapack]: ","color":"yellow","bold":true},{"text":"Immersive Soundings was reinstalled! If you still have problems, please report them.","color":"white","bold":false}]

tag @s[type=player] remove immersive.fix