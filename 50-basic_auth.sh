sed -i 's|location / {|location / {\n\tauth_basic \"Restricted Content\";\n\tauth_basic_user_file /etc/nginx/.htpasswd;\n|g' /etc/nginx/conf.d/default.conf
sleep 5 && nginx -s reload &
