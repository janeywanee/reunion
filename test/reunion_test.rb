require 'minitest'
require 'minitest/test'
require 'minitest/autorun'
require './lib/reunion'
require './lib/activity'

class ReunionTest < Minitest::Test

  def test_it_exists
    reunion = Reunion.new("Cheeseman Park")

    assert_instance_of Reunion, reunion
  end

  def test_it_has_a_location
    reunion = Reunion.new("Cheeseman Park")

    assert_equal "Cheeseman Park", reunion.location
  end

  def test_it_has_zero_activities_to_start
    reunion = Reunion.new("Cheeseman Park")

    assert_equal [], reunion.activities
  end

  def test_it_can_add_one_activity
    reunion = Reunion.new("Cheeseman Park")
    activity = Activity.new("hiking")

    reunion.add_activity(activity)

    assert_equal "hiking", reunion.activities.first.activity_name
  end
end
