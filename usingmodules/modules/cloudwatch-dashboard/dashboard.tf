resource "aws_cloudwatch_dashboard" "main" {
  dashboard_name = var.dashboard_name

  dashboard_body = <<EOF
    {
      "widgets" : [
        {
          "height" : 6,
          "width" : 6,
          "y" : 0,
          "x" : 0,
          "type" : "metric",
          "properties" : {
            "view" : "timeSeries",
            "stacked" : true,
            "metrics" : [
              ["AWS/EC2", "CPUUtilization", "InstanceId", "${var.instance_id[0]}"],
              ["...", "${var.instance_id[1]}"],
              ["...", "${var.instance_id[2]}"]
            ],
            "region" : "us-east-1"
          }
        },
        {
          "height" : 7,
          "width" : 6,
          "y" : 6,
          "x" : 0,
          "type" : "metric",
          "properties" : {
            "metrics" : [
              ["AWS/ApplicationELB", "RequestCount", "LoadBalancer", "app/automation-tesing-lb/4830c730646dd2a8"],
              ["...", "app/74540450-dheeraj-publicing-eace/3e00b1689d43f175"]
            ],
            "sparkline" : true,
            "view" : "singleValue",
            "region" : "us-east-1",
            "title" : "ALB- request count",
            "period" : 300,
            "stat" : "Average"
          }
        },
        {
          "height" : 6,
          "width" : 6,
          "y" : 0,
          "x" : 6,
          "type" : "metric",
          "properties" : {
            "view" : "timeSeries",
            "stacked" : false,
            "metrics" : [
              ["AWS/EC2", "NetworkIn", "InstanceId","${var.instance_id[0]}"],
              ["...", "${var.instance_id[1]}"],
              ["...", "${var.instance_id[2]}"]
            ],
            "region" : "us-east-1",
            "period" : 300
          }
        },
        {
          "height" : 7,
          "width" : 6,
          "y" : 6,
          "x" : 6,
          "type" : "metric",
          "properties" : {
            "metrics" : [
              ["AWS/EC2", "DiskReadBytes", "InstanceId", "${var.instance_id[0]}", { "yAxis" : "left" }],
              ["...", "${var.instance_id[1]}"],
              ["...", "${var.instance_id[2]}"]
            ],
            "view" : "bar",
            "region" : "us-east-1",
            "period" : 300,
            "stat" : "Maximum"
          }
        },
        {
          "height" : 6,
          "width" : 6,
          "y" : 0,
          "x" : 12,
          "type" : "metric",
          "properties" : {
            "view" : "timeSeries",
            "stacked" : false,
            "metrics" : [
              ["AWS/EC2", "NetworkOut", "InstanceId", "${var.instance_id[0]}"],
              ["...", "${var.instance_id[1]}"],
              ["...", "${var.instance_id[2]}"]
            ],
            "region" : "us-east-1"
          }
        }
      ]
    }
    EOF
}