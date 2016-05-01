PROJECT = emqttd_auth_redis
PROJECT_DESCRIPTION = emqttd Authentication/ACL against Redis
PROJECT_VERSION = 1.1

DEPS = eredis ecpool emqttd

dep_mysql  = git https://github.com/wooga/eredis master
dep_ecpool = git https://github.com/emqtt/ecpool master
dep_emqttd = git https://github.com/emqtt/emqttd plus

COVER = true

ERLC_OPTS += +'{parse_transform, lager_transform}'

include erlang.mk

app:: rebar.config
