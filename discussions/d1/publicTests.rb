require "minitest/autorun"
require_relative "main.rb"

class PublicTests < Minitest::Test
    def setup
        @obj = RustIdentifier.new
        @obj.add("Omar", "Y")
        @obj.add("Stephen", "N")
        @obj.add("Timothy", "N")
        @obj.add("Omar", "N")
    end

    def test_public_add
        assert_equal(["Omar", "Stephen", "Timothy"].sort, @obj.get_tas.sort)
    end

    def test_public_knows_not_rust
        assert_equal(["Stephen", "Timothy"].sort, @obj.knows_not_rust.sort)
    end

    def test_public_capture_ta
        @obj.capture_tas(["Timothy", "Omar"])
        assert_equal(["Stephen"], @obj.get_tas.sort)
    end
end
