helpers do
  def title(arg)
    sitename = 'Kickoff'
    if arg
      sitename = sitename + ' | ' + arg
    end
    @title = sitename
  end
end
