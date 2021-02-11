###############################################################################
#       4.   Grouped chart of matches played by team by season CLASS          #
###############################################################################
class AllSeasons
  def all_ipl_seasons(matches)
    seasons = Set[]
    matches.each do |i|
      seasons.add(i['season'])
    end
    seasons = seasons.to_a
    teams = %w[SRH MI GL RPS RCB KKR DD KXIP CSK RR DC KTK PW RPS]
    n = seasons.length
    every_season = Hash[teams.map { |x| [x, [0] * n] }]
    calculate_seasons(seasons, matches, every_season, n)
  end

  def calculate_seasons(seasons, matches, every_season, nums)
    i = 0
    j = 0
    while i < seasons.length && j < matches.length
      if seasons[i] == matches[j]['season']
        j, every_season = newloop(i, j, matches, every_season, nums)
      else
        i += 1
      end
    end
    season_labels1(every_season, seasons)
  end

  def newloop(icount, jcount, matches, every_season, nums)
    if icount != 0
      every_season = newloop_data(icount, jcount, matches, every_season)
    else
      every_season[matches[jcount]['team1']][icount + nums - 1] += 1
      every_season[matches[jcount]['team2']][icount + nums - 1] += 1
    end
    jcount += 1
    [jcount, every_season]
  end

  def newloop_data(icount, jcount, matches, every_season)
    every_season[matches[jcount]['team1']][icount - 1] += 1
    every_season[matches[jcount]['team2']][icount - 1] += 1
    every_season
  end

  def season_labels1(every_season, seasons)
    all_season = convet_to_full(every_season)
    dict1 = {}
    index = 0
    sorted_season = seasons.sort
    sorted_season.each do |name|
      dict1[index] = name
      index += 1
    end
    season_labels2(dict1, all_season)
  end

  def season_labels2(dict1, all_season)
    title = 'NUMBER OF GAMES PLAYED BY TEAMS'
    xlab = '------Seasons------'
    ylab = 'Number_of_Matches'
    file_name = '/Data-Analysis-Using-Ruby/Graphs/Number_of_Matches.png'
    maxval = 20
    dif = 2
    use_funtion_graph = GraphData.new
    use_funtion_graph.for_group_graph(title, xlab, ylab, all_season, dict1, file_name, maxval, dif)
  end

  def convet_to_full(every_season)
    change_name = UpdateNames.new
    t = change_name.team_name
    Hash[every_season.map { |k, v| [t.key(k), v] }]
  end
end

###############################################################################
#        Grouped chart of matches played by team by season CLASS END          #
###############################################################################
