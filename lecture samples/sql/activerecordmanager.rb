require "singleton"
require "sqlite"

class ActiveRecordManager
  include Singleton
  
  def initialize
    establish_database_connection
  end
  
  def to_s
    
  end
  
  private
  def establish_database_connection
    
  end
end