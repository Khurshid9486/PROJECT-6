Ansible role configure_php_ini
=========

Ansible role to configure php.ini file of our Apache server in acordance to the listed on php_ini_parameters_and_values

Requirements
------------

Ansible >= 2.3

Role Variables
--------------

```yaml
# Full path to cli/php.ini file
cli_php_ini_path: /etc/php/7.0/cli/php.ini

# List of CLI PHP parameters to configure
cli_php_ini_parameters_and_values:
  - parameter: post_max_size
    value: 1G
  - parameter: upload_max_filesize
    value: 1G
  - parameter: max_execution_time
    value: 90
  - parameter: max_input_time
    value: 90
  - parameter: memory_limit
    value: 256M
  - parameter: date.timezone
    value: '"America/Montevideo"'

# Full path to apache2/php.ini file
apache_php_ini_path: /etc/php/7.0/apache2/php.ini

# List of APACHE PHP parameters to configure
apache_php_ini_parameters_and_values:
  - parameter: post_max_size
    value: 256M
  - parameter: upload_max_filesize
    value: 256M
  - parameter: date.timezone
    value: '"America/Montevideo"'
```

Dependencies
------------

No dependences

Example Playbook
----------------

```yaml
- hosts: servers_lamp
  roles:
    - role: configure_php_ini
      cli_php_ini_parameters_and_values:
        - parameter: max_execution_time
          value: 90
        - parameter: max_input_time
          value: 90
      apache_php_ini_parameters_and_values:
        - parameter: post_max_size
          value: 256M
        - parameter: upload_max_filesize
          value: 256M

```

License
-------

(c) Universidad de la República (UdelaR), Red de Unidades Informáticas de la UdelaR en el Interior.
licenced under GPL-v3

Author Information
------------------

[@santiagomr](https://github.com/santiagomr)
[@UdelaRInterior](https://github.com/UdelaRInterior)
https://proyectos.interior.edu.uy/
