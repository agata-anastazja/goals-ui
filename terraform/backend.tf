terraform {
    backend "s3" {
        bucket = "agata-tf-states"
        key    = "goals-ui.tfstate"
        region = "eu-west-2"
    }
}