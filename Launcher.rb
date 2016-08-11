require 'colorize'
def layout_u
puts "          Mount and Bley-bley Launcher by Josqu            ".red.on_blue.blink
puts "-----------------------------------------------------------".yellow
end 
$modul_nummer = 0
def clear
	system ('clear')
	layout_u
end
def start_MB
	clear
	puts "!~Loading~!".green
	case $modul_nummer 

	when 1
		system ('echo "Native" > ~/.mbwarband/last_module_warband')
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
puts "            Welches Module wollen sie starten?             ".colorize(:blue)
puts "Native = 1                                                 ".red
puts "Viking Conquest = 2                                        ".red
puts "Napoleonic Wars = 3                                        ".red
puts "Anderes = 4                                                ".red
print "Modulnummer:"
$modul_auswahl = gets.chomp
case $modul_auswahl
	when "1"
		$modul_nummer = 1
	when "2"
		$modul_nummer = 2
	when "3"
		$modul_nummer = 3
	when "4"
		puts "In work"
	end
	clear
	menu
end
def menu
	clear
puts "Modul aussuchen = 1                                        ".blue
puts "Cheats Aktivieren/Deaktivieren = 2                         ".blue
puts "Starten = 3                                                ".blue
puts "-----------------------------------------------------------".yellow
$menu_input = gets.chomp
case $menu_input
	when "1"
		modul_menu
		clear
	when "2"
		puts "Sry, In work!"
		menu
		clear
	when "3" 
		start_MB
		clear
	else 
		puts "Error M1s"
		menu
	end
end
layout_u
menu
