require 'pry'
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
     total + participant.values[0]
   end
  end

  def split_cost_evenly
    total_cost / participants.length
  end

  def amount_off
    participants.map do |participant|
      name = participant.keys[0]
      amount_off = split_cost_evenly - participant.values[0]
      {name => amount_off}
    end
  end
end
