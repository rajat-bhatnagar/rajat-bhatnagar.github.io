{
echo " ################# Cleaning Site #################"
jekyll clean;
echo " ################# Building Site #################"
jekyll build;
echo " ################# Serving Site in interactive Mode at $(date) #################"
jekyll serve -I;
}