#require_relative
require 'colorize'
def layout_u #Banner
puts "          Mount and Bley-bley Launcher by Josqu            ".red.on_blue.blink
puts "-----------------------------------------------------------".yellow
end
$modul_nummer = 0 # if 1 then Native. If 2 then Viking Conquest. if 3 then Napoleon Wars -module
$cheat_of_on  = 0 # if true then cheats true
def clear #clear the terminal and puts layout_u
	system ('clear')
	layout_u
end
def start_MB
	clear
	puts "!~Loading~!".green
	case $modul_nummer
	when 1
		system ('echo "Native" > ~/.mbwarband/last_module_warband') #edit last_module_warband to native
    when 2
    	system ('echo "Viking Conquest" > ~/.mbwarband/last_module_warband')
    when 3
    	system ('echo "Napoleonic Wars" > ~/.mbwarband/last_module_warband')
    when 0
    	puts "?~Loading~?".green
    	system ('steam steam://rungameid/48700')
        menu
    else
    	puts "cant find module Error SMB2".green
    	menu
    end
	system ('steam steam://rungameid/48700')
end
def modul_menu
	clear
puts "            Which modul you want to start?                 ".colorize(:blue)
puts "Native = 1                                                 ".red
puts "Viking Conquest = 2                                        ".red
puts "Napoleonic Wars = 3                                        ".red
puts "Other = 4                                                ".red
print "module number:".green
$modul_auswahl = gets.chomp
case $modul_auswahl
	when "1"
		$modul_nummer = 1
	when "2"
		$modul_nummer = 2
	when "3"
		$modul_nummer = 3
	when "4"
		puts "In work".green
		puts "push anything to move back".green
		gets
	end
	clear
	menu
end
def cheat
	clear
	puts "Cheat activate = 1                                     ".red
	puts "Cheat deactivate = 2                                   ".red
	puts "-----------------------------------------------------------".yellow
	$cheat_of_on = gets.chomp
	if $cheat_of_on == "1"
		$cheat_status = "true"
	system ('sed -i -e 29c"cheat_mode = 1" ~/.mbwarband/rgl_config.txt')
	elsif $cheat_of_on == "2"
		$cheat_status = "false"
	system ('sed -i -e 29c"cheat_mode = 0" ~/.mbwarband/rgl_config.txt')
	else
		puts "Error cheat status 1"
		cheat
	end
	clear
	menu
end
def menu
	clear
puts "Modul aussuchen = 1                                        ".red
puts "Cheats Aktivieren/Deaktivieren = 2                         ".red
puts "Starten = 3                                                ".red
puts "use strg+c to leave!                                       ".red
puts "-----------------------------------------------------------".yellow
print ":".green
$menu_input = gets.chomp
case $menu_input
	when "1"
		modul_menu
		clear
	when "2"
		cheat
		clear
	when "3"
		start_MB
		clear
	else
		puts "Error M1s"
		menu
	end
end
puts "~Loading~".green
layout_u
menu
