output "instance_id" {
  value = aws_instance.this.id  # ✅ must match the actual resource name
}