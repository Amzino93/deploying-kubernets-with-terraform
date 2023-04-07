resource "kubernetes_deployment" "helloword" {
  metadata {
    name= "helloword"
  }
  spec {
    selector {
      match_labels = {
        "app" = "helloword"
      }
    }
    replicas = "2"
    template {
      metadata {
        labels = {
          "app" = "helloword"
        }
      }
      spec {
        container {
          name = "helloword"
          image = "karthequian/helloword:latest"
          port {
            container_port = 80
          }
        }
      }
    }
  }
}








