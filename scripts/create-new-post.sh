##cd ../public
uuid=`uuidgen`
echo `created blog post id $uuid`
#mkdir `public/posts/$uuid`
echo "Enter blog heading : "
read heading
echo "Enter blog short desciption : "
read shortdesc
echo "Enter list of coma seperate blog tags : "
read -r -a tags
echo "Enter category of post :"
read category

JSON_STRING=$(echo "{\"postId\":\"$uuid\",\"heading\":\"$heading\",\"shortdesc\":\"$shortdesc\",\"tags\":\"$tags\",\"category\":\"$category\"}")
echo `json $JSON_STRING`