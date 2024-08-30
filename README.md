# Sample_flask

1. Jenkins CI CD pipeline for flask application:- 

Objective: 

Set up a Jenkins pipeline that automates the testing and deployment of a simple Python web application. 

Requirements: 

1. Setup: 
- Install Jenkins on a virtual machine or use a cloud-based Jenkins service. 
 

 

 

 

 

 

Then install open jdk compatible version on your ec2 instance:- 

I have installed jdk 11 in my case. 

 

Then install jenkins on the ec2 

Then add a Jenkins apt repository entry: 

 

Update your local package index, then finally install Jenkins: 

 

- Configure Jenkins with Python and any necessary libraries. 
- Configure Jenkins 

Install Python and Necessary Libraries: 
Install Python on the Jenkins server: 
 “sudo apt install python3-pip –y" 

 

Install necessary Jenkins plugins: 

-Python Plugin 

 
 

 

-Git Plugin 

 

 

-Pipeline Plugin 

 

2. Source Code: 

  - Fork the provided Python web application repository on GitHub (provide a link to a sample Python web application repository). 

https://github.com/Rajpreetsingh12/Sample_flask.git 

Fork a Sample Python Web Application 
this repo is owned by me and i have written the sample python flask code and pushed on this repo. 
 

 

B. Clone the Repository in Jenkins 

Create a new Jenkins job and configure it to clone the forked repository: 
 

 

In the Pipeline configuration, use the following GitHub repository URL 

 

3. Jenkins Pipeline 

 Create a Jenkinsfile 
 
In your forked repository, create a Jenkinsfile in the root directory with the following content: 

 

 

 

 

Make sure you have a deploy.sh script in your repository to handle deployment. 

 

4. Triggers 

- Configure Build Triggers 

- In the Jenkins job configuration, under the "Build Triggers" section, enable "GitHub hook trigger for GITScm polling." 

 

-This will automatically trigger the pipeline whenever changes are pushed to the main branch. 

 

 

5. Notifications 

- Set Up Email Notifications 

-In the "Manage Jenkins" > "Configure System" section, configure the SMTP server for email notifications. 

 

 

 

Use the emailext function in your Jenkinsfile to send email notifications based on build status. 

 

 

Deliverables: 

- Forked GitHub repository with Jenkinsfile. 

https://github.com/Rajpreetsingh12/Sample_flask.git 

 

 

 

- Screenshots of the Jenkins pipeline execution. 

 

 

 

 
 
