require 'octokit'

# get your access token at https://github.com/settings/tokens/new
access_token = ''
client = Octokit::Client.new(access_token: access_token)

repos = client.org_repos('your_old_company')
repos.each do |repo|
  puts "unwatching #{repo.full_name}..."
  client.delete_subscription repo.full_name
end
