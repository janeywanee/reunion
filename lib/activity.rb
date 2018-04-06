class Activity
  attr_reader :activity_name, :participants

  def initialize(activity_name)
    @activity_name = activity_name
    @participants = []
  end

  def add_participant(participant)
    participants << participant
  end

  def total_cost
   participants.reduce(0) do | total, participant |
     total + participant
   end
  end
end
