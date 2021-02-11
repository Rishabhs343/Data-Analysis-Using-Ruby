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
$ ruby Main.rb
```

OR (Run From Home Directory)

```
ruby "/Data-Analysis-Using-Ruby/Main.rb"
```
