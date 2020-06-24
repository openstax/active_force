source 'https://rubygems.org'

# Specify your gem's dependencies in active_force.gemspec
gemspec

rails_version = ENV["RAILS_VERSION"] || "default"

rails = case rails_version
when "master"
  {github: "rails/rails"}
when "default"
  ">= 5.2.4.3"
else
  "~> #{rails_version}"
end

gem "rails", rails

