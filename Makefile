pjName := cfx.v2

docker:
	docker run \
		--name ${pjName} \
		--rm \
		-ti \
		-p 3999:9999 \
		-v $(PWD):/root/${pjName} \
		mooxe/node \
		/bin/bash

in:
	docker exec \
		-ti \
		${pjName} \
		/bin/bash
