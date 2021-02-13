

# Copy files with mc
docker run -it  --rm --entrypoint=/bin/bash -v `pwd`/storage:/storage:ro minio/mc
export MC_HOST_minio=https://accessKey:SecretKey@minio.p.digaweb.com/
mc cp --recursive /storage/magescanner-har/ minio/minio-magescanner-har-orbital-wording-233917/



root@pg-wal-g-backup-xchvg:/# chmod +x mc
root@pg-wal-g-backup-xchvg:/# export MC_HOST_minio=http://$AWS_ACCESS_KEY_ID:$AWS_SECRET_ACCESS_KEY@minio.minio:9200/                                                                                                                                                          
root@pg-wal-g-backup-xchvg:/# mc ls minio

