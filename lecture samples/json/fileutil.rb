module FileUtil
  def get_file_as_string(filename)
    content = ""
    f = File.open(filename, "r")
    f.each_line{ |line| content += line }
    return content
  end
end