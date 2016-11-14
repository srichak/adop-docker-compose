#!/bin/bash


# LDAP

export LDAP_SERVER="ldap:389"
export LDAP_DOMAIN="adop.accenture.com"
export LDAP_FULL_DOMAIN="dc=adop,dc=accenture,dc=com"
export LDAP_USER_BASE_DN="ou=people"
export LDAP_GROUP_BASE_DN="ou=groups"
export LDAP_USER_SEARCH="uid={0}"
export LDAP_ADMIN="cn=admin"
export LDAP_ACCOUNTPATTERN='(cn=${username})'
export LDAP_ACCOUNTFULLNAME='${cn}'
export LDAP_GROUPPATTERN='(cn=${groupname})'
export LDAP_GROUPMEMBERPATTERN='(uniqueMember=${dn})'
export LDAP_MANAGER_DN="cn=admin,dc=adop,dc=accenture,dc=com"
export LDAP_GROUP_NAME_ADMIN="administrators"


# Gitlab

export GITLAB_ROOT_PASSWORD=${PASSWORD_GITLAB}
export GITLAB_DB_PORT=5432
export GITLAB_DB_USER=git
export GITLAB_DB_NAME=gitlabhq_production

# Sonar MySQL

export SONAR_MYSQL_USER="sonar"
export SONAR_MYSQL_PASSWORD="sonar"
export SONAR_MYSQL_DATABASE="sonar"

# Jenkins

export SONAR_ACCOUNT_LOGIN="jenkins"
export SONAR_DB_LOGIN=${SONAR_MYSQL_USER}
export SONAR_DB_PASSWORD=${SONAR_MYSQL_PASSWORD}

# Jenkins Slave

export SLAVE_EXECUTORS=1
export SLAVE_MOUNT_PATH_NODE="/local_data/jenkins_slave_node"
export SLAVE_MOUNT_PATH_NODE_4="/local_data/jenkins_slave_node_4"
export SLAVE_MOUNT_PATH_JAVA="/local_data/jenkins_slave_node"
export SLAVE_MOUNT_PATH_ANSIBLE="/local_data/jenkins_slave_ansible"

# Jenkins Certificate Path
####
# "//" to cater for both Windows and Unix path
####
export DOCKER_CLIENT_CERT_PATH="//root/.docker/"

# SSL Settings
export PROTO="https"
