# IPL data set analytics

## AIM

>Analyze and Convert Raw open data into Graphs

## Preparation

>Collect IPL Data from [kaggle](https://www.kaggle.com/manasgarg/ipl/version/5)
>Collect additional data from the Internet or Wikipedia

## Instructions

>* Download all the data needed or get all data from " ***ruby-data-project / Data / Original_Data*** "
>* Fork the seed ruby-data-project project from the Master group.
>* Initialize **rbenv** for this project.
>* Enable ruby linting via. RuboCop for this project.

## Task

>1. Plot Graph For Total runs scored by all teams in IPL

>2. Top 5 highest Run Scorer for Royal Challengers Bangalore

>3. Foreign umpire analysis

>4. Stacked/Grouped chart of the total number of matches played by teams per IPL season


## Solution

### Installation

```
$ apt-get install gem
$ gem install bundler
```

### Specify your dependencies in a Gemfile in your project's root:

>source 'https://rubygems.org'

>gem 'rspec'

```
$ bundle install
$ git add Gemfile Gemfile.lock
$ gem install ruby
$ bundle add ruby
$ gem install gruff
$ bundle add gruff
$ gem install rubocop
$ bundle add rubocop
$ gem install csv
$ bundle add csv
$ gem install set
$ bundle add set
```
### Run project

Once all the Dependencies are Install, Run this command from Project Directory

```
$ ruby ipl_analysis.rb
```

OR (Run From Home Directory)

```
ruby "/ruby-data-project/ipl_analysis.rb"
```

## Explanation:

>This Command execute **ipl_analysis.rb** File
>First **ipl_analysis.rb** will take data from ***Data / Original_Data Folder*** in ***ruby-data-project Folder***

>Then **ipl_analysis.rb** create a new csv files in ***ruby-data-project Folder / Data / Updated_Data Folder***

>In the new CSV file all Team Names and Country Names are converted into **abbreviations** for easy graph plotting

>**ipl_analysis.rb** perform all the task and stores Output graph in Graph Folder
