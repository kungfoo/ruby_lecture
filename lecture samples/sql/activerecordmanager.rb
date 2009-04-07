require "singleton"
require "rubygems"
require "sqlite3"

class ActiveRecordManager
  include Singleton
  
  def initialize
    establish_database_connection
  end
  
  def to_s
    
  end
  
  private
  def establish_database_connection
    @db = SQLite3::Database.new("db/people.db")
  end
end

