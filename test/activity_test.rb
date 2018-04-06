require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/activity'

class ActivityTest < Minitest::Test

  def test_it_exists
    activity = Activity.new("hiking")

    assert_instance_of Activity, activity
  end

  def test_it_has_a_activity_name
    activity = Activity.new("hiking")

    assert activity.activity_name
  end

  def test_it_starts_with_no_participants
    activity = Activity.new("hiking")

    assert_equal [], activity.participants
  end

  def test_it_can_add_participants
    activity = Activity.new("hiking")

    activity.add_participant({"Jane" => 10})

    assert_equal [{"Jane" => 10}], activity.participants
  end

  def test_it_can_add_more_than_one_participant
    activity = Activity.new("hiking")

    activity.add_participant({"Jane" => 10})
    activity.add_participant({"Justine" => 10})

    assert_equal [{"Jane" => 10}, {"Justine" => 10}], activity.participants
  end

  def test_it_can_evaluate_the_total_cost_of_an_activity
    activity = Activity.new("hiking")

    activity.add_participant({"Jane" => 10})
    activity.add_participant({"Justine" => 10})
    activity.add_participant({"Sabrina" => 10})
    activity.add_participant({"Jerrel" => 10})

    assert_equal 40, activity.total_cost
  end

  def test_it_can_split_the_cost_evenly
    activity = Activity.new("hiking")

    activity.add_participant({"Jane" => 10})
    activity.add_participant({"Justine" => 10})
    activity.add_participant({"Sabrina" => 10})
    activity.add_participant({"Jerrel" => 10})

    assert_equal 10, activity.split_cost_evenly
  end

end
