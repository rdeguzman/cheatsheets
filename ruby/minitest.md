# minitest

## Commands

	# ruby sample_test.rb --name some_method 

	# vim sample_test.rb
	class SampleTest < Minitest::Test
	  def test_sample
		 skip
		 assert_equal "1", "1" 
	  end
	end
