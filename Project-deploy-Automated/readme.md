This is the locally deployed java application using vagrant tool

The application contains the stack of 
1. db01 ==> Database (mysql)
2. mc01 ==> Memcached (caching data)
3. rmq01 ==> Rabbitmq (queing data and services)
4. app01 ==> Tomcat (web server)
5. web01 ==> nginx (load balancing)

each stack is deployed using IAAC in vagrant (virutal box)

commands to execute

vagrant init
vagrant up

access the application in --> http://192.168.56.11/

Further commands attached in output.txt file

**application is developed by "VISUAL PATH" developers and the application is used for the
purpose of learning local deployment

RUNNING STATUS (vagrant global-status)

![image](https://github.com/ILNEKELASHENGINEER/Devops/assets/93472619/902905ac-f302-4de7-94c7-30a2f5941a03)


LOGIN PAGE

![image](https://github.com/ILNEKELASHENGINEER/Devops/assets/93472619/ceace0a9-ee96-4c56-8b5e-9a9aa46f7bb0)

DASHBOARD (shows successfull authentication == database connection is good)

![image](https://github.com/ILNEKELASHENGINEER/Devops/assets/93472619/4c71a546-79e3-4cf2-8609-c2d97f1ed1a6)

MEMCACHE

![image](https://github.com/ILNEKELASHENGINEER/Devops/assets/93472619/96665e6a-c030-4ce2-932d-58c49562bca0)

![image](https://github.com/ILNEKELASHENGINEER/Devops/assets/93472619/634fc7e1-98df-492b-9cb9-936041d66c6b)


everything working good!!!!


