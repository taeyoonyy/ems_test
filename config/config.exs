import Config

config :ems_test, EmsTest.Repo,
  database: "ems_test_repo",
  username: "root",
  password: "adminadmin",
  hostname: "ems-v2-postgre-instance.ch0gijfshbtc.ap-northeast-2.rds.amazonaws.com"

  config :ems_test, ecto_repos: [EmsTest.Repo]