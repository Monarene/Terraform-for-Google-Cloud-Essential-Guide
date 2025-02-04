resource "google_compute_network" "this" {
  name                    = var.network
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "this" {
  # uncomment the next line for depends_on
  depends_on               = [resource.google_compute_network.this]
  for_each = var.subnets
  network  = var.network
  # Using the resource instead of the variable will make the the dependency explicit 
  # network  = google_compute_network.this.name
  name                     = each.key
  region                   = each.value["region"]
  ip_cidr_range            = each.value["ip_cidr_range"]
  private_ip_google_access = "true"
}
