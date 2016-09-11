all: mavlink_control

mavlink_control:  mavlink_control.cpp
	g++ -I mavlink/ mavlink_control.cpp serial_port.cpp autopilot_interface.cpp -o mavlink_control -lpthread

git_submodule:
	git submodule update --init --recursive

clean:
	 rm -rf *o mavlink_control
