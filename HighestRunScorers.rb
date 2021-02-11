###############################################################################
#          2.  Top batsman for Royal Challengers Bangalore CLASS              #
###############################################################################
class HighestRunScorers
  def top_batsman_rcb(deliveries)
    rcb_players = Set[]
    deliveries.each do |i|
      rcb_players.add(i['batsman'])
    end
    run_by_rcb = Hash[rcb_players.map { |x| [x, 0] }]
    deliveries.each do |h|
      per_run = h['batsman_runs'].to_i
      run_by_rcb[h['batsman']] += per_run if h['batting_team'] == 'RCB'
    end
    rcb(run_by_rcb)
  end

  def rcb(run_by_rcb)
    runs = run_by_rcb.sort_by { |_k, v| v }.reverse.first(5).map(&:last)
    batsman = run_by_rcb.sort_by { |_k, v| v }.reverse.first(5).map(&:first)
    dict1 = {}
    index = 0
    batsman.each do |name|
      dict1[index] = name
      index += 1
    end
    rcb_labels(runs, dict1)
  end

  def rcb_labels(runs, dict1)
    title = 'Top batsman for Royal Challengers Bangalore'
    xlab = '------RCB_Batsman------'
    ylab = 'Runs_Scored'
    file_name = '/Data-Analysis-Using-Ruby/Graphs/Top_Batsman_For_RCB.png'
    maxval = 5000
    datas = 'Runs'
    dif = 500
    use_funtion_graph = GraphData.new
    use_funtion_graph.bar_graph(title, xlab, ylab, runs, dict1, file_name, maxval, dif, datas)
  end
end

###############################################################################
#           Top batsman for Royal Challengers Bangalore CLASS END             #
###############################################################################
