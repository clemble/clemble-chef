name "java"
description "Install Oracle Java"
default_attributes(
  "java" => {
    "install_flavor" => "oracle",
    "accept_oracle_download_terms" => true,
    "jdk_version" => "8"
  }
)
run_list(
  "recipe[java]"
)
