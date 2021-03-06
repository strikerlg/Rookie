source=./

themes=( "emblem" "football-club" "marquee" "courtside" "premier" )

for theme in "${themes[@]}"
do
        rsync -az --exclude=style.css --exclude=rtl.css --exclude=screenshot.png --exclude=functions.php --exclude="*.txt" --exclude="*sh" $source ../$theme
        cp $source/functions.php ../$theme/framework.php
        echo "Copied framework files into $theme."
done