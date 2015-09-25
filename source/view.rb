class View

  def display_greeting
    "HI! Welcome to the urban aborist app!!\n" + display_instructions
  end

  def display_instructions
    "This is what you can do with the app\n
    \tYou can create a profile for yourself and your garden and get TREE recomendations\n
    \tYou can also browse all of the legal tree spieces!\n"
  end

  def display_menu
    "these are the commands you can use \n
    type these commands into the command line...\n
    \t exit- to leave the whole program\n
    \t browse- to see all the trees\n
    \t find, characterisic, what you want- (find, color, red)\n
    \t create_profile- to make a profile\n
    \t add_tree- to add a tree to your virtual urban arboretum\n
    \t slash_and_burn- destroy the entire arboretum\n
    \t slash_not_burn- kill a specific tree"
  end

  def display(output)
    puts output
  end

  def get_input
    gets.chomp
  end

end
