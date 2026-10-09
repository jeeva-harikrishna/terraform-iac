output "instance_ids" {
  description = "Map of resource name to instance ID"
  value = {
    dbi360_wp_php             = aws_instance.dbi360_wp_php.id
    aster_wp                  = aws_instance.aster_wp.id
    zyler_wp                  = aws_instance.zyler_wp.id
    confluxhr_wp              = aws_instance.confluxhr_wp.id
    gomeet_wp                 = aws_instance.gomeet_wp.id
    nexus_demo                = aws_instance.nexus_demo.id
    gj_ca_wp_website          = aws_instance.gj_ca_wp_website.id
    etl_akhilesh              = aws_instance.etl_akhilesh.id
    jeevahealthcare_wp_n      = aws_instance.jeevahealthcare_wp_n.id
    sanvi_ecr                 = aws_instance.sanvi_ecr.id
    rds_client                = aws_instance.rds_client.id
    etl_scrapper_akhilesh     = aws_instance.etl_scrapper_akhilesh.id
    etl_dev_scrapper          = aws_instance.etl_dev_scrapper.id
    zyler_old                 = aws_instance.zyler_old.id
    app_security_test         = aws_instance.app_security_test.id
    ingrediant_fetch_akhilesh = aws_instance.ingrediant_fetch_akhilesh.id
    git_dev                   = aws_instance.git_dev.id
    github_actions_runner     = aws_instance.github_actions_runner.id
    windows_server_akhilesh   = aws_instance.windows_server_akhilesh.id
    dev_ch_db_dipti_nayak     = aws_instance.dev_ch_db_dipti_nayak.id
    kafka_uma                 = aws_instance.kafka_uma.id
    dbi_chat_widget           = aws_instance.dbi_chat_widget.id
    click_house_demo_new      = aws_instance.click_house_demo_new.id
    clickhouse_server_demo    = aws_instance.clickhouse_server_demo.id
    webserver                 = aws_instance.webserver.id
  }
}
