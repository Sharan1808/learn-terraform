env = "dev"
ami = "ami-03265a0778a880afb"
sg_id = ["sg-092c519c833331df5"]
zone_id = "Z08005401DQ0Y8GTTZHAT"

components = {
  frontend = {
    name = "frontend"
    instance_type = "t3.micro"
  }
  mysql = {
    name = "mysql"
    instance_type = "t3.micro"
  }
  backend = {
    name = "backend"
    instance_type = "t3.micro"
  }
}