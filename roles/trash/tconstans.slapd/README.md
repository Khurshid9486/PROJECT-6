Role Name
=========

install openldap servers on CentOS - should work on RH too

TODO
----

make it work on CentOS8:
difier form_slapd/vars/CentOS.yml : 
ldap_packages:
  - symas-openldap-servers
  - symas-openldap-clients
  - python3-ldap.x86_64
ldap_service: slapd
ldap_user: ldap

dans form_slapd/templates/change_suffix_and_dit_admin.ldif remplacer hdb par mdb ligne 1

dans form_slapd/tasks/main.yml remplacer hdb par mdb ligne 26
Requirements
------------

none

Role Variables
--------------
defined in vars/main.yml and vars/CentOS.yml

  * ldap_domain      - example
  * ldap_domain_ex   - net 
  * ldap_suffix      - constructed from variables above example.net
  * ldap_admin_dn    - cn=manager,{{ ldap_suffix }}
  * ldap_admin_password - 123Soleil - should be in a vault ...)
  * ldap_secret_file - default to /root/.ldap.secret
  * ldap_packages    - liste of packages - should be the only thing to change to
    adapt to other distro
  * ldap_service     - name of service unit file - slapd
  * ldap_user        - slapd service account
  * ldap_schemas     - list of additionnal schema names to load - default cosine
  * ldap_replication_consumer - bool -true to setup a replication consumer
  * ldap_replication_provider - bool -true to setup a replication provider
  * ldap_replication_account - account used for replication
  * ldap_replication_password - account password  used for replication
  - ldap_replication_provider_uri - ldap uri of provider server
  * ldap_have_ssl    - boolean - wether we use ssl or not
  * ldap_ssl_dir     - directory where certificates will be stored
  * ldap_cache_size: 3000
  * ldap_idlcache_size: 60001024 30
  * ldap_checkpoint: 1024 30
  * ldap_ssl_cert_path - {{ ldap_ssl_dir }}/{{ ansible_fqdn }}_fullchain.pem
  * ldap_ssl_cacert_path - {{ ldap_ssl_dir }}/{{ ansible_fqdn }}_fullchain.pem
  * ldap_ssl_key_path - {{ ldap_ssl_dir }}/{{ ansible_fqdn }}_privkey.pem
  * ldap_ldif_files - optional list of ldif files to send to server and inject.
    Will be templated. need absolute path


Dependencies
------------

None

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

  - role: slapd
    vars:
    - ldap_schemas:
      - cosine
      - nis
      - inetorgperson
    - ldap_replication_consumer: false
    - ldap_domain: opendoor
    - ldap_domain_ex: fr
    - ldap_suffix: o=od
    - ldap_admin_password: 123Soleil
    - ldap_replication_provider: false
    - ldap_have_ssl: yes
    - ldap_ssl_dir: /etc/openldap/certs/
    - ldap_ssl_cert_path: "{{ ssl_certificate_file }}"
    - ldap_ssl_key_path: "{{ ssl_key_file }}"
    - ldap_ssl_cacert_path: "{{ ssl_ca_file }}"
    - ldap_ldif_files:
      - /home/tom/tmp/cyrus_postfix_ldap/Vagrant/0_branches.ldif
      - /home/tom/tmp/cyrus_postfix_ldap/Vagrant/1_users.ldif

License
-------

BSD
Author Information
------------------

Thomas C <thomas@opendoor.fr>
