# exit on error
set -e

# Remove carriage return characters (if any)
sed -i 's/\r//' ./render-build.sh


bundle install
bundle exec rails assets:precompile
bundle exec rails assets:clean
bundle exec rails db:migrate

#if you have seeds to run add:
# bundle exec rails db:seed