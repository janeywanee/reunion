class Activity
  attr_reader :activity_name, :participants

  def initialize(activity_name)
    @activity_name = activity_name
    @participants = []
  end
end
