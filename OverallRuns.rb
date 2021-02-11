###############################################################################
#          1.          Total Runs Scored By Team CLASS                        #
###############################################################################
class OverallRuns
  def batting_run_count(matches, deliveries)
    teams = Set[]
    matches.each do |i|
      teams.add(i['team1'])
    end
    total_run = Hash[teams.map { |x| [x, 0] }]
    deliveries.each do |j|
      runs_per_ball = j['total_runs'].to_i
      total_run[j['batting_team']] += runs_per_ball
    end
    run_count(total_run, teams, deliveries)
  end

  def run_count(total_run, teams, deliveries)
    runs = []
    total_run.each do |_key, values|
      runs.append(values)
    end
    teams = teams.to_a
    [runs, teams, deliveries]
  end

  def total_runs_scored(runs, teams)
    dict1 = {}
    index = 0
    teams.each do |name|
      dict1[index] = name
      index += 1
    end
    total_runs_lable(runs, dict1)
  end

  def total_runs_lable(runs, dict1)
    title = 'Total Runs Scored By Team'
    xlab = '------Teams------'
    ylab = 'Runs_Scored'
    file_name = '/Data-Analysis-Using-Ruby/Graphs/Total_Runs_Scored_By_Team.png'
    maxval = 25_000
    datas = 'Runs'
    dif = 1500
    use_funtion_graph = GraphData.new
    use_funtion_graph.bar_graph(title, xlab, ylab, runs, dict1, file_name, maxval, dif, datas)
  end
end

###############################################################################
#                   Total Runs Scored By Team CLASS END                       #
###############################################################################
