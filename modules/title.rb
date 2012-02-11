helpers do
  def title(s)
    sitename = 'Kickoff'
    if s
      sitename = sitename + ' | ' + s
    end
    @title = sitename
  end
end
