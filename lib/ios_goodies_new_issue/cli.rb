require 'ios_goodies_new_issue/create'
require 'ios_goodies_new_issue/latest'
require 'ios_goodies_new_issue/template'
require 'ios_goodies_new_issue/version'

# Command line interface
module IosGoodiesNewIssue
  SYMBOL = ''

  class << self
    def cli
      puts "#{PROJECT} #{VERSION}"

      print "checking latest week on #{WEB_URL} ... "
      web = web_get()
      puts web

      puts 'checking github ...                 '
      next_issue = web.to_i + 1
      github = github_matches(next_issue)
      if (github)
        print "creating a new issue from template ... "
        name, content = template_create(next_issue)
        puts name

        puts 'pushing to github ...'
        create_issue(name, content) do |o|
          puts "  - #{o}"
        end

        puts 'finished 🍰'
      else
        puts 'up to date 🎉'
        exit
      end
    end
  end
end
