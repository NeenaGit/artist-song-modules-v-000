module paramable

  def to_param
    name.downcase.gsub(' ', '-')
  end

end
