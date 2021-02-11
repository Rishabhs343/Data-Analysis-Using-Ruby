###############################################################################
#                                 MAIN CLASS                                  #
###############################################################################

class Main
  require 'csv'
  require 'set'
  require_relative 'GraphData'
  require_relative 'OverallRuns'
  require_relative 'HighestRunScorers'
  require_relative 'AllUmpires'
  require_relative 'AllSeasons'
  require_relative 'UpdateNames'
  require_relative 'UpdatedFile'

  matches = CSV.open('/Data-Analysis-Using-Ruby/Data/Updated_Data/new_matches_data.csv',
                     headers: :first_row).map(&:to_h)
  deliveries = CSV.open('/Data-Analysis-Using-Ruby/Data/Updated_Data/new_deliveries_data.csv',
                        headers: :first_row).map(&:to_h)
  umpires = CSV.open('/Data-Analysis-Using-Ruby/Data/Updated_Data/new_umpires_data.csv',
                     headers: :first_row).map(&:to_h)

  update_name = UpdateNames.new
  update_file = UpdatedFile.new
  use_for_runcount = OverallRuns.new
  top_run_scorer = HighestRunScorers.new
  all_foreign_umpires = AllUmpires.new
  all_seaons = AllSeasons.new

  team_display = update_name.team_name
  country_display = update_name.country_name
  runs, teams, deliveries = use_for_runcount.batting_run_count(matches, deliveries)
  update_file.file_paths(team_display, country_display)
  use_for_runcount.total_runs_scored(runs, teams)
  top_run_scorer.top_batsman_rcb(deliveries)
  all_foreign_umpires.foreign_umpire(umpires)
  all_seaons.all_ipl_seasons(matches)
end

###############################################################################
#                             MAIN CLASS END                                  #
###############################################################################

###############################################################################
#                             CALL MAIN CLASS                                 #
###############################################################################

Main.new

###############################################################################
#                                     EOF                                     #
###############################################################################
