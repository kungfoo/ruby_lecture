require "net/http"
require "rubygems"
require "json"

class TwitterApi
  HOST = "twitter.com"
  TIMELINE_URL = "/statuses/user_timeline/[user].json"
  
  def timeline(userid)
    url = TIMELINE_URL.gsub("[user]", userid)
    response = Net::HTTP.get_response(HOST,url)
    
    json = JSON.parse(response.body)
    statuses = parse_json_content(json)
  end
  
  private
  def parse_json_content(json)
    statuses = []
    json.each do |status|
      statuses << Status.new(status)
    end
    return statuses
  end
end