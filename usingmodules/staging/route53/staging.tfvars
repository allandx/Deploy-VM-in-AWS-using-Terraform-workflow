#To create a hosted zone in r53
hosted_zone_name = "ac-godmode2.com"

#below uses for_each to pass values
recordname = [
  "allanroute53",
  "allanroute53-2"
]

recordtype = "A"
ttl        = "300"
public_ip  = "34.228.36.55"


  