docker run -d \
	-p 8082:80 \
	-e SERVER_NAME=paste.sbehan.ca \
	-e MAX_FILESIZE=10 \
	-e MIN_FILEAGE=1 \
	-e MAX_FILEAGE=10 \
	-e UPLOAD_TIMEOUT=60 \
	-e ADMIN_EMAIL=codebam@riseup.net \
        -e AUTO_FILE_EXT=true \
	-v /home/codebam/volumes/pastebin:/srv/single_php_filehost/files:z \
	-v /home/codebam/pastebin/purge.sh:/etc/periodic/weekly/purge.sh:z \
	--name single_php_filehost \
	single_php_filehost
