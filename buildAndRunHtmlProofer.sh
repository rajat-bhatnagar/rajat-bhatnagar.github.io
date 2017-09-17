{
echo "Build"
bundle exec jekyll build;
echo "Running HTML Proofer to check internal links"
bundle exec htmlproofer  --allow-hash-href ./_site  --disable-external;
}