if(instance_exists(other)) {
	other.hp -= damage;
	instance_destroy();
}