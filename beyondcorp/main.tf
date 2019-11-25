provider "google" {
  credentials = file("../credentials/learning-gcp.json")

  project = "learning-gcp-260106"
}

resource "google_service_account" "cloud_identity_account" {
  account_id = "cloud-identity-account"
}

resource "google_service_account_key" "cloud_identity_account_key" {
  service_account_id = google_service_account.cloud_identity_account.name
}
