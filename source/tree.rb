
class Tree

   attr_reader:species_scientific_name :species_common_name :form :growth_rate :fall_color :environmental_tolerances :location_tolerances :notes_suggested_cultivars :tree_size :comments

  def initialize(options = {})
    @species_scientific_name = options[:species_scientific_name]
    @species_common_name = options[:species_common_name]
    @form = options[:form]
    @growth_rate = options[:growth_rate]
    @fall_color = options[:fall_color]
    @environmental_tolerances = options[:environmental_tolerances]
    @location_tolerances = options[:location_tolerances]
    @notes_suggested_cultivars = options[:notes_suggested_cultivars]
    @tree_size = options[:tree_size]
    @comments = options[:comments]
  end

  def to_s
    "#{species_scientific_name} | #{species_common_name} | #{form} | #{fall_color} | #{location_tolerances}"
  end


end


