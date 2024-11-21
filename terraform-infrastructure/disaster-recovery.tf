resource "aws_s3_bucket_versioning" "my_bucket_versioning" {
  bucket = aws_s3_bucket.my_bucket.id

  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_ebs_snapshot" "db_snapshot" {
  volume_id = var.volume_id
  tags = {
    Name = "DB-Snapshot"
  }
}