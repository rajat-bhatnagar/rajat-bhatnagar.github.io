{
cd ..
echo " ####### Building Site #######"
bundle exec jekyll build;
echo " ### Running HTML Proofer to check internal links ###"
echo " ### Allow Hash Reference ###"
echo " ### External link checking has been disabled now ###"
bundle exec htmlproofer  --allow-hash-href ./_site  --disable-external;
}