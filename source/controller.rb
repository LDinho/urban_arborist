require_relative 'user'
require_relative 'view'

require 'open-uri'
require 'JSON'


class Controller
  attr_reader :view, :data_base_url
  attr_accessor :user

  def initialize
    @view = View.new
    @user = nil
    @data_base_url = "https://data.cityofnewyork.us/resource/99wq-x9cr.json"
  end

  def run
    view.display(view.display_greeting)
    view.display(view.display_menu)
    input = view.get_input

    while input != "exit"
      case input
      when "browse"
        view.display(list_trees)
      when "find"
        view.display(view.ask_for_attribute) #where+height+=+yellow
        attribute = view.get_input
        view.display(view.ask_for_attribute_matcher) # yellow
        matcher = view.get_input
        view.display(find_tree(attribute, matcher))
      when "create_profile"
        #ask user for a name..and create new user object passing a name
      when "add_tree"
        #display all tree names, get user input for tree name
        #create new tree object, put in garden
      when "slash_and_burn"
        # takes user's garden and deletes all trees
      when "slash_not_burn"
        #display all trees in garden and ask user which tree to destroy
      end
      # puts "right before we ask for input"
      view.display_menu
      input = view.get_input
    end
  end

  def list_trees
    file = open(data_base_url)
    data = JSON.parse(file.read) #array of hashes with tree info
    data.map {|tree| Tree.new(tree)}
  end

  def find_tree(attribute, matcher)
    query = attribute.sub(" ", "")
    query = "?"+query + "#{matcher}"
    new_url = data_base_url+query
    p new_url
    file = open(new_url)
    data = JSON.parse(file.read)
    data.map do |tree|
      # puts tree
      my_tree = Tree.new(tree)
      # p my_tree
      my_tree
    end
  end

end
