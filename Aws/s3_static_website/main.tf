provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "example" {
  bucket = var.bucket_name

  tags = {
    Name        = "MyExampleBucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_website_configuration" "example" {
  bucket = aws_s3_bucket.example.id

  index_document {
    suffix = "index.html"
  }

  error_document {
    key = "error.html"
  }

  routing_rule {
    condition {
      key_prefix_equals = "docs/"
    }
    redirect {
      replace_key_prefix_with = "documents/"
    }
  }

  # If you want to use routing_rules with JSON format
  # routing_rules = <<EOF
  # [{
  #     "Condition": {
  #         "KeyPrefixEquals": "docs/"
  #     },
  #     "Redirect": {
  #         "ReplaceKeyPrefixWith": "documents/"
  #     }
  # }]
  # EOF
}

resource "aws_s3_bucket_policy" "example_bucket_policy" {
  bucket = aws_s3_bucket.example.id
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect    = "Allow"
        Principal = "*"
        Action    = "s3:GetObject"
        Resource  = "${aws_s3_bucket.example.arn}/*"
      },
    ]
  })
}

resource "aws_s3_object" "index" {
  bucket = aws_s3_bucket.example.id
  key    = "index.html"
  source = "path/to/your/index.html"  # Change to the path of your local file
}

resource "aws_s3_object" "error" {
  bucket = aws_s3_bucket.example.id
  key    = "error.html"
  source = "path/to/your/error.html"  # Change to the path of your local file
}


# Explanation
# Routing Rule Configuration:

# The routing_rule block allows you to define a condition 
#(e.g., if the request key prefix equals "docs/") and specify a redirection action (e.g., replace the key prefix with "documents/").
# Alternative JSON Format:

# The commented-out section using routing_rules as a JSON string shows another way to define routing rules. You can choose either method based on your preference.
# Bucket Policy: Ensures that the objects in the bucket can be accessed publicly.

# Uploading Files: This example includes how to upload the index.html and error.html files to the bucket.