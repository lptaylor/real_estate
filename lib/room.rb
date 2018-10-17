class Room
attr_reader :catagory, :height, :width
  def initialize(catagory, height, width)
    @catagory = catagory
    @height = height
    @width = width

  end

  def find_area
    @height * @width
  end



end
