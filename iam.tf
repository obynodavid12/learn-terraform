resource "aws_iam_role" "s3-viobucket-role" {
  name               = "s3-viobucket-role"
  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF

}

resource "aws_iam_instance_profile" "s3-viobucket-role-instanceprofile" {
  name = "s3-viobucket-role"
  role = aws_iam_role.s3-viobucket-role.name
}

resource "aws_iam_role_policy" "s3-viobucket-role-policy" {
  name = "s3-viobucket-role-policy"
  role = aws_iam_role.s3-viobucket-role.id
  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
              "s3:*"
            ],
            "Resource": [
              "arn:aws:s3:::viobucket-s10df2",
              "arn:aws:s3:::viobucket-s10df2/*"
            ]
        }
    ]
}
EOF

}


