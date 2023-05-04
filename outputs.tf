# Déclaration des outputs pour récupérer les valeurs des ressources créées

output "function_url" {
	value = module.cloud_function.function_url
}