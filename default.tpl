server
{
    listen 80;
    # server_name test.mandiao.1024it.cn;
    location / {
        # proxy_pass http://mandiao.1024it.cn;
        proxy_pass http://$TARGET_DOMAIN;
        proxy_redirect off;
        proxy_set_header Host $TARGET_DOMAIN;
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        # proxy_set_header X-Forwarded-Host $host:$server_port;
        # proxy_set_header X-Forwarded-Server $host;
    }
}
