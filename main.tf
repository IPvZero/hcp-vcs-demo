resource "random_pet" "suffix" {
  length = 2
}

resource "aws_s3_bucket" "vcs" {
  bucket = "hcp-vcs-${random_pet.suffix.id}"

  tags = {
    Owner = var.owner
  }
}
