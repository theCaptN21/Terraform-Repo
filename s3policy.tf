#Jenkins Bucket Policy
resource "aws_iam_policy" "jenkins_s3_write_policy" {
  name = "jenkins_s3_write_policy"

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "s3:PutObject",
        "s3:GetObject"
      ],
      "Effect": "Allow",
      "Resource": "${aws_s3_bucket.katoriasjenkins_bucket9902.arn}/*"
    }
  ]
}
EOF
}

resource "aws_iam_role_policy_attachment" "jenkins_s3_write_attachment" {
  policy_arn = aws_iam_policy.jenkins_s3_write_policy.arn
  role       = aws_iam_role.jenkins_role.name
}