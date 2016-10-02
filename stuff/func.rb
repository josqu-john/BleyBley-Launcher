class modul
modul_auswahl = "Unknown"


  def ask_module
    modul_auswahl = gets.chomp
    modul_auswahl.to_i # convert Variable into a String
  case modul_auswahl
  when 1



  def native
    system ('echo "Native" > ~/.mbwarband/last_module_warband') #edit last_module_warband to native
  end
  def viking
    system ('echo "Viking Conquest" > ~/.mbwarband/last_module_warband')
  end
  def napoleon
    system ('echo "Napoleonic Wars" > ~/.mbwarband/last_module_warband')
  end

end

class
