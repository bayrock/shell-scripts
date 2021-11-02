read -p 'Input repo name:' name
read -p 'Input Git username:' username
curl -u $username 'https://api.github.com/user/repos' -d '{"name":$name,"private":false}'


