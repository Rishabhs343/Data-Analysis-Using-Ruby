###############################################################################
#                             UPDATE FILES CLASS                              #
###############################################################################
class UpdatedFile
  def file_paths(team_display, country_display)
    matches_data = '/Data-Analysis-Using-Ruby/Data/Original_Data/matches.csv'
    deliveries_data = '/Data-Analysis-Using-Ruby/Data/Original_Data/deliveries.csv'
    umpires_data = '/Data-Analysis-Using-Ruby/Data/Original_Data/umpires.csv'
    output1 = CSV.open('/Data-Analysis-Using-Ruby/Data/Updated_Data/new_matches_data.csv',
                       'w')
    output2 = CSV.open(
      '/Data-Analysis-Using-Ruby/Data/Updated_Data/new_deliveries_data.csv', 'w'
    )
    output3 = CSV.open('/Data-Analysis-Using-Ruby/Data/Updated_Data/new_umpires_data.csv',
                       'w')
    update_files1(matches_data, team_display, output1)
    update_files2(deliveries_data, team_display, output2)
    update_files3(umpires_data, country_display, output3)
  end

  def update_files1(matches_data, team_display, output1)
    File.open(matches_data) do |file|
      CSV.foreach(file) do |row|
        row = row.map do |x|
          team_display.key?(x) ? team_display[x] : x
        end
        output1 << row
      end
    end
  end

  def update_files2(deliveries_data, team_display, output2)
    File.open(deliveries_data) do |file|
      CSV.foreach(file) do |row|
        row = row.map do |x|
          team_display.key?(x) ? team_display[x] : x
        end
        output2 << row
      end
    end
  end

  def update_files3(umpires_data, country_display, output3)
    File.open(umpires_data) do |file|
      CSV.foreach(file) do |row|
        row = row.map do |x|
          country_display.key?(x) ? country_display[x] : x
        end
        output3 << row
      end
    end
  end
end

###############################################################################
#                          UPDATE FILES CLASS END                             #
###############################################################################
