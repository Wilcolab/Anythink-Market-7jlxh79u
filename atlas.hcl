variable "addr" {
  type    = string
  default = "localhost:5433"
}

// Define an environment named "local"
env "local" {
  // Define the URL of the database which is managed in
  // this environment.
  url = "postgres://postgres:@${var.addr}/anythink-market?sslmode=disable"

  // Define the URL of the Dev Database for this environment
  // See: https://atlasgo.io/concepts/dev-database
  dev = "postgres://postgres:@${var.addr}/test?sslmode=disable"

  // The schemas in the database that are managed by Atlas.
  schemas = ["public"]
}
