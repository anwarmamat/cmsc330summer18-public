# Fill in these regular expressions
ID = //
NAME = //
HOMETOWN = //
DOB = //
EMAIL = //

# This is the regular expression for a single record
RECORD = /^#{ID},#{NAME},#{HOMETOWN},#{DOB},#{EMAIL}$/

class ApertureScheduler

    # sanitize : Array -> Array
    # Returns non-corrupt employee records
    def self.sanitize(records)
        []
    end

    # schedule : Array -> Array
    # Returns schedule of newly formatted employee records
    def self.schedule(records)
        []
    end

end
