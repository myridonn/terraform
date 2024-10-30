resource "docker_image" "nginx" {
  name         = "nginx:[1].[27]"
  keep_locally = false
}

resource "docker_container" "nginx" {
  image = docker_image.nginx.[1].[27]
  name  = "tutorial"
  ports {
    internal = 80
    external = 80
  }
}
