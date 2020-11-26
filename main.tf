output "a true bool" {
  value       = true
  description = "The true of the main server instance."
}

output "a false bool" {
  value       = false
  description = "The false of the main server instance."
}

output "a string" {
  value       = "example string"
  description = "The private string of the main server instance."
}

output "an int" {
  value       = 1001
  description = "The private integer of the main server instance."
}

output "a decimal" {
  value       = 1000.1
  description = "The private decimal of the main server instance."
}

output "a list" {
  value       = ["example", 1001, 1000.1]
  description = "The private integer of the main server instance."
}

output "a map" {
  value       = {"example": 1001, "bar": 1000.1}
  description = "The private integer of the main server instance."
}

output "a long string" {
  value       = "The private integer of the main server instance is where you want to go when you have the most fun in every Terraform instance you can see in the world that you live in except for dogs because they don't run servers in the same place that humans do."
  description = "A long string is good for you."
}

output "a big int" {
  value       = 1234567890
  description = "A big int is good for you."
}

output "a big decimal" {
  value       = 1234567890.0987654321
  description = "A big decimal is good for you."
}

output "a sensitive value" {
  value       = "hopefully you cannot see me"
  description = "The sensitive string of the main server instance."
  sensitive   = true
}

resource "random_id" "random" {
  keepers = {
    uuid = uuid()
  }
  
  byte_length = 8
}

output "random" {
  value = random_id.random.hex
}
