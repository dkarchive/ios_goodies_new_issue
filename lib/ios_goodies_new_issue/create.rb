# Create new issue on GitHub
module IosGoodiesNewIssue
  require 'octokit'
  require 'yaml'

  YAML_FILE = 'config.yml'

  REPO = 'iOS-Goodies/iOS-Goodies'
  PATH = 'Issues'

  class << self
    def create_issue(name, content)
      # get token from config.yml
      config = YAML.load_file YAML_FILE
      token = config['token']

      yield 'creating github client ... '
      client = Octokit::Client.new(:access_token => token)

      commit_message = "Create #{name}"
      # yield commit_message

      yield 'committing changes ... '

      path  = "#{PATH}/#{name}"
      # yield path

      client.create_contents(
        REPO,
        path ,
        commit_message,
        content)
      yield 'done'
    end
  end
end
