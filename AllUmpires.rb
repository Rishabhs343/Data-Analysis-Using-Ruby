###############################################################################
#          3.            Foreign umpire analysis CLASS                        #
###############################################################################
class AllUmpires
  def foreign_umpire(umpire)
    all_umpires = Set[]
    umpire.each do |i|
      all_umpires.add(i['nationality']) if i['nationality'] != 'IND'
    end
    count_of_matches = Hash[all_umpires.map { |x| [x, 0] }]
    umpire.each do |h|
      count_of_matches[h['nationality']] += 1 if h['nationality'] != 'IND'
    end
    umpire_count(count_of_matches)
  end

  def umpire_count(count_of_matches)
    country = count_of_matches.collect { |k, _v| k }
    count_umpires = count_of_matches.collect { |_k, v| v }
    index = 0
    dict1 = {}
    country.each do |name|
      dict1[index] = name
      index += 1
    end
    umpire_labels(count_umpires, dict1)
  end

  def umpire_labels(count_umpires, dict1)
    title = 'Foreign umpire analysis'
    xlab = '------Nationality------'
    ylab = 'Number_of_Umpires'
    file_name = '/Data-Analysis-Using-Ruby/Graphs/Foreign_umpire_analysis.png'
    maxval = 10
    datas = 'Umpires'
    dif = 1
    use_funtion_graph = GraphData.new
    use_funtion_graph.bar_graph(title, xlab, ylab, count_umpires, dict1, file_name, maxval, dif, datas)
  end
end

###############################################################################
#                     Foreign umpire analysis CLASS END                       #
###############################################################################
