 require 'colorize'
def layout_u
puts "          Mount and Bley-bley Launcher by Joschi           ".red.on_blue.blink
puts "-----------------------------------------------------------".yellow
end
def modul
system ('clear')
layout_u
puts "            Welches Module wollen sie starten?             ".colorize(:blue)
puts "Native = 1                                                 ".red
puts "Viking Conquest = 2                                        ".red
puts "Napoleonic Wars = 3                                        ".red
puts "Anderes = 4                                                ".red
print "Modulnummer: ".yellow
$modul = gets.chomp
if $modul == "1" 
system ('echo "Native" > ~/.mbwarband/last_module_warband')
modul
elsif $modul == "2"
system ('echo "Viking Conquest" > ~/.mbwarband/last_module_warband')
modul
elsif $modul == "3"
system ('echo "Napoleonic Wars" > ~/.mbwarband/last_module_warband')
modul
elsif $modul == "4"
puts "Actually in Work in Progress!/In Arbeit"
modul
else 
puts "Error: Modul missed"
modul
end 
end
modul