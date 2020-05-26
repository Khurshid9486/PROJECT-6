Role Name
=========
ldap_server

THIS ROLE DOES NOT DEAL WITH CERTIFICATE PLEASE CREATE CERTIFICATES ON YOUR OWN ON THE REMOTE BOX!!!!!

Requirements
------------
Please make you certificates before running this role, and check key.ldif.j2 file for making sure that your certificates are located in the right directions

Passwordless accsess to the remote box, make sure you have "epel-release" and "openldap-servers" package installed, execute the command "slappasswd" on the box you want to deploy this role, type any password you want and copy that password to the hdb.ldif.j2 file.





Role Variables
--------------

---
# defaults file for ldap_server

#The domain prefix for ldap
openldap_server_domain_name: example.com

#This is the password for admin for openldap 
openldap_server_rootpw: password


Dependencies
------------


Example Playbook
----------------

---
- hosts: ldapserver
  remote_user: root
  become: yes
  roles:
    - ldpa_server

License
-------

BSD

Author Information
------------------

Khurshid Ruziev
