env_name="AI"

if [[ $VIRTUAL_ENV == "" ]];  then
	echo "===== update and install some required packages ====="
	sudo apt update -y
	sudo apt install -y python3-dev python3-pip
	sudo pip3 install jupyter
	sudo pip3 install --upgrade virtualenv
	sudo apt install -y ipython
	sudo apt install -y build-essential cmake git libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev


	echo "===== create virtual environment ====="
	virtualenv --system-site-packages -p python3 $env_name

	echo "Activate the new environment by command:"
	echo ""
	echo "	source $env_name/bin/activate"
	echo ""
	echo "Then, execute this script one more time in new environment."

#source $env_name/bin/activate
else

	echo "===== install tensorflow ====="
	pip3 install --upgrade tensorflow

	echo "===== install opencv ====="
	cd $env_name
	cwd=$(pwd)
	git clone https://github.com/opencv/opencv.git
	git clone https://github.com/opencv/opencv_contrib.git
	cd opencv
	mkdir build
	cd build
	cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=$cwd -D WITH_TBB=ON -D WITH_V4L=ON -D PYTHON_LIBRARY=/usr/lib/x86_64-linux-gnu/libpython3.6m.so -D OPENCV_EXTRA_MODULES_PATH=../../opencv_contrib/modules ..
	make -j7
	make install
	cd ..
	rm -R build
	cd ../..

	echo "===== install $env_name kernel ====="
	python3 -m pip install ipykernel
	python3 -m ipykernel install --user --name $env_name

	echo "Deactivate new environment by command:"
	echo ""
	echo "	deactivate"
	echo ""

fi
#deactivate