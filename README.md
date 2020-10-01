# gotty-docker 
**DO NOT USE IN PRODUCTION**. 

Web accessable shell into a container for debugging.

Sample ECS Taskdef (Can be run on Fargate)
Replace USER, PASS below with your username and password

```
{
    "name": "gotty",
    "image": "ssayala/gotty",
    "cpu": 0,
    "portMappings": [
        {
            "containerPort": 8080,
            "hostPort": 8080,
            "protocol": "tcp"
        }
    ],
    "essential": true,
    "entryPoint": [
        "/usr/local/bin/gotty"
    ],
    "command": [
        "--credential",
        "USER:PASS",
        "--permit-write",
        "--reconnect",
        "/bin/sh"
    ],
    "environment": [
        
    ],
    "mountPoints": [
        
    ],
    "volumesFrom": [
        
    ]
}

```
