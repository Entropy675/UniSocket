#include "LinuxSocket.h"


LinuxSocket::LinuxSocket()
{
	std::cout << "Linux socket is not yet made..." << std::endl;
}

LinuxSocket::~LinuxSocket()
{
	
}

int LinuxSocket::startServer()
{
	
	return 0;
}

int LinuxSocket::sendData(const std::string& data) 
{
	
	return 0;
}

int LinuxSocket::sendData(const std::string& data, int cs)
{
	
	return 0;
}

void LinuxSocket::acceptConnections()
{
	
}

void LinuxSocket::receiveDataToQueue(int socket)
{
	
}

void LinuxSocket::receiveData(std::string& out, int cs)
{
	
}

void LinuxSocket::startResendOfOrder(int socket, const std::string& cmd)
{
	
}


void LinuxSocket::resendOrder(int socket, std::string cmd)
{

}
