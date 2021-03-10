{
  "serviceName": $SERVICE_NAME,
  "containers": {
     "app": {
        "image": $IMAGE_NAME,
        "ports": {
           "80": "HTTP"
        },
        "environment": {
            "APP_KEY": $APP_KEY
        }
     }
  },
  "publicEndpoint": {
     "containerName": "app",
     "containerPort": 80,
     "healthCheck": {
         "path": "/"
     }
  }
}