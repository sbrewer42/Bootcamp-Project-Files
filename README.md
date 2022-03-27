# Bootcamp-Project-Files
This repository explains how to set up and secure an Azure cloud network. It also includes step by step instructions for setting up an automated Elk Stack deployment with Filebeat and Metricbeat.


## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

![TODO: Update the path with the name of your diagram](Images/diagram_filename.png)

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the _____ file may be used to install only certain pieces of it, such as Filebeat.

 - _TODO: Enter the playbook file._ filebeat-playbook.yml

This document contains the following details:
- Description of the Topologu
- Access Policies
- ELK Configuration
 - Beats in Use
 - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly _accessible_, in addition to restricting _traffic_ to the network.
- _TODO: What aspect of security do load balancers protect? Accessibility
 What is the advantage of a jump box?_  It automates the setting up of VM’s.

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the _log data_ and system _files_.
- _TODO: What does Filebeat watch for?_ log data
- _TODO: What does Metricbeat record?_ system files

The configuration details of each machine may be found below.
_Note: Use the [Markdown Table Generator](http://www.tablesgenerator.com/markdown_tables) to add/remove values from the table_.

| Name       | Function                 | IP Address | Operating System |
|------------|--------------------------|------------|------------------|
| Jump Box   | Gateway                  | 10.2.04    | Linux            |
| Web 1      | DVWA web server          | 10.2.0.5   | Linux            |
| Web 2      | DVWA web server          | 10.2.0.6   | Linux            |
| Elk Server | search and log analytics | 10.0.0.4   | Linux            |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the _Load Balancer_ machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
- _TODO: 13.83.50.163

Machines within the network can only be accessed by _SSH/Port 22_.
- _TODO: Which machine did you allow to access your ELK VM? Jump Box
What was its IP address?_ 40.83.215.89

A summary of the access policies in place can be found in the table below.

| Name       | Publicly Accessible | Allowed IP Addresses |
|------------|---------------------|----------------------|
| Jump Box   | yes                 | My Personal IP       |
| Web 1      | No                  | 10.2.0.4(JB IP)      |
| Web 2      | No                  | 10.2.0.4(JB IP)      |
| Elk Server | No                  | 10.2.0.4(JB IP)      |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because… 
- _TODO: What is the main advantage of automating configuration with Ansible?_ then the user, me, cant mess it up...and its quick and consistent.

The playbook implements the following tasks:
- _TODO: In 3-5 bullets, explain the steps of the ELK installation play. E.g., install Docker; download image; etc._
- Install Docker.io, python3-pip, docker module: get, update, and install the docker engine, python and the python client for docker.
- Increase Virtual Memory, Use More memory: Increase and use the amount of virtual memory.
-Download and launch a docker elk container: do exactly that with specific published ports. 

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

![TODO: Update the path with the name of your screenshot of docker ps output](Images/docker_ps_output.png)

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- _TODO: List the IP addresses of the machines you are monitoring_
	10.2.0.5
	10.2.0.6

We have installed the following Beats on these machines:
- _TODO: Specify which Beats you successfully installed_
	Filebeat
	Metricbeat

These Beats allow us to collect the following information from each machine:
- _TODO: In 1-2 sentences, explain what kind of data each beat collects, and provide 1 example of what you expect to see. E.g., `Winlogbeat` collects Windows logs, which we use to track user logon events, etc._
	
	Filebeat collects log data for each virtual machine. Allows us to see info such as how many visitors we’ve had and if theyve experience any errors. It also shows us what processes are running on our connected hosts:
 For example: On Mar 21,2022 @ 19:11:56 a python3 process ran on Web-2.
	Metricbeat provides metric logs for each VM and provides CPU and memory usage.




### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the _____ file to _____.
- Update the _____ file to include...
- Run the playbook, and navigate to ____ to check that the installation worked as expected.

_TODO: Answer the following questions to fill in the blanks:_
- _Which file is the playbook? Copy the mulitple config and playbook files in the etc/ansible and etc/ansible/roles directories.
 Where do you copy it?_ to Jumpbox 
- _Which file do you update to make Ansible run the playbook on a specific machine?
Update the config/hosts files to include Kabana, and elastisearch, host IP and Port Number.
 How do I specify which machine to install the ELK server on versus which to install Filebeat on?_ 
- _Which URL do you navigate to in order to check that the ELK server is running?
   http://20.25.109.88:5601/app/kabana
_As a **Bonus**, provide the specific commands the user will need to run to download the playbook, update the files, etc._
