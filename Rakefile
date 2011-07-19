task :remote_add do
  sh "git remote add origin git@github.com:akiradeveloper/ruby-wiki.git"
end

task :push => [:remote_add] do
  sh "git push -u origin master"
end
