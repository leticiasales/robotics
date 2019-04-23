When running for the first time, run: 

> docker build --tag=robotics .

To open bash with graphic interface on Mac, run: 

> docker run -i -t \\
	-v /tmp/.X11-unix:/tmp/.X11-unix \
	-e DISPLAY \
	robotics /bin/bash