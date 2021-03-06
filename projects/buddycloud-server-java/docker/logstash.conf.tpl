{										
 "network": {								
	"servers": ["logs.buddycloud.com:31337"],		
        "ssl certificate": "/opt/logstash-forwarder/logstash-forwarder.crt",
        "ssl key": "/opt/logstash-forwarder/logstash-forwarder.key",	
        "ssl ca": "/opt/logstash-forwarder/logstash-forwarder.crt",
        "timeout": 15						
  },							
  "files": [
    {
      "paths": [ "/var/log/buddycloud-server-java/buddycloud-server-java.log" ],
      "fields": { "type": "buddycloud-server-java", "env": "#DEPLOYMENT_ENV#" }
    }
  ]
}
