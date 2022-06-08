deploy:
	make -C ../raw-data-processing deploy
	make -C ../streamers-recommendataion deploy
	make -C ../lg-redis-export/ s3-deploy
