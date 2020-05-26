alias ldm="ldapmodify -x -D {{ ldap_admin_dn }} -y {{ ldap_secret_file }}"
alias lda="ldapadd -x -D {{ ldap_admin_dn }} -y {{ ldap_secret_file }}"
alias lds="ldapsearch -xLLL -D {{ ldap_admin_dn }} -y {{ ldap_secret_file }}"
alias ldrm="ldapdelete -x -D {{ ldap_admin_dn }} -y {{ ldap_secret_file }}"
