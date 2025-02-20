documentation_complete: true

title: 'CIS Ubuntu 24.04 Level 1 Workstation Benchmark'

description: |-
    This baseline aligns to the Center for Internet Security
    Ubuntu 24.04 LTS Benchmark, v1.0.0, released 08-26-2024.

selections:
    # 1 Initial Setup #
    ## 1.1 Filesystem Configuration ##
    ### 1.1.1 Configure Filesystem Kernel Modules ###
    #### 1.1.1.1 Ensure mounting of cramfs filesystems is disabled (Automated)
    - kernel_module_cramfs_disabled

    #### 1.1.1.2 Ensure mounting of freevxfs filesystems is disabled (Automated)
    - kernel_module_freevxfs_disabled

    #### 1.1.1.3 Ensure mounting of hfs filesystems is disabled (Automated)
    - kernel_module_hfs_disabled

    #### 1.1.1.4 Ensure mounting of hfsplus filesystems is disabled (Automated)
    - kernel_module_hfsplus_disabled

    #### 1.1.1.5 Ensure mounting of jffs2 filesystems is disabled (Automated)
    - kernel_module_jffs2_disabled

    #### 1.1.1.6 Ensure overlayfs kernel module is not available (Automated)
    # Skip due to L2
    
    #### 1.1.1.7 Ensure squashfs kernel module is not available (Automated)
    # Skip due to L2

    #### 1.1.1.8 Ensure udf kernel module is not available (Automated)
    # Skip due to L2

    #### 1.1.1.9 Disable USB Storage (Automated)
    # Skip due to L2
    #- kernel_module_usb-storage_disabled

    #### 1.1.1.10 Ensure unused filesystems kernel modules are not available (Manual)
    # Manual

    ### 1.1.2 Configure Filesystem Partitions ###
    #### 1.1.2.1 Configure /tmp ####
    ##### 1.1.2.1.1 Ensure /tmp is a separate partition (Automated)
    - partition_for_tmp

    ##### 1.1.2.1.2 Ensure nodev option set on /tmp partition (Automated)
    - mount_option_tmp_nodev

    ##### 1.1.2.1.3 Ensure noexec option set on /tmp partition (Automated)
    - mount_option_tmp_noexec

    ##### 1.1.2.1.4 Ensure nosuid option set on /tmp partition (Automated)
    - mount_option_tmp_nosuid

    #### 1.1.2.2 Configure /dev/shm ####
    ##### 1.1.2.2.1 Ensure /dev/shm is separate partion (Automated)
    - partition_for_dev_shm

    ##### 1.1.2.2.2 Ensure nodev option set on /dev/shm partition (Automated)
    - mount_option_dev_shm_nodev

    ##### 1.1.2.2.3 Ensure nosuid option set on /dev/shm partition (Automated)
    - mount_option_dev_shm_nosuid

    ##### 1.1.2.2.4 Ensure noexec option set on /dev/shm partition (Automated)
    - mount_option_dev_shm_noexec

    #### 1.1.2.3 Configure /home ####
    ##### 1.1.2.3.1 Ensure separate partition exists for /home (Automated)
    # Skip due to being Level 2

    ##### 1.1.2.3.2 Ensure nodev option set on /home partition (Automated)
    - mount_option_home_nodev

    ##### 1.1.2.3.3 Ensure nosuid option set on /home partition (Automated)
    - mount_option_home_nosuid

    #### 1.1.2.4 Configure /var ####
    ##### 1.1.2.4.1 Ensure separate partition exists for /var (Automated)
    # Skip due to being Level 2

    ##### 1.1.2.4.2 Ensure nodev option set on /var partition (Automated)
    - mount_option_var_nodev

    ##### 1.1.2.4.3 Ensure nosuid option set on /var partition (Automated)
    - mount_option_var_nosuid

    #### 1.1.2.5 Configure /var/tmp ####
    ##### 1.1.2.5.1 Ensure separate partition exists for /var/tmp (Automated)
    # Skip due to being Level 2

    ##### 1.1.2.5.2 Ensure nodev option set on /var/tmp partition (Automated)
    - mount_option_var_tmp_nodev

    ##### 1.1.2.5.3 Ensure nosuid option set on /var/tmp partition (Automated)
    - mount_option_var_tmp_nosuid

    ##### 1.1.2.5.4 Ensure noexec option set on /var/tmp partition (Automated)
    - mount_option_var_tmp_noexec

    #### 1.1.2.6 Configure /var/log ####
    ##### 1.1.2.6.1 Ensure separate partition exists for /var/log (Automated)
    # Skip due to being Level 2

    ##### 1.1.2.6.2 Ensure nodev option set on /var/log partition (Automated)
    - mount_option_var_log_nodev

    ##### 1.1.2.6.3 Ensure noexec option set on /var/log partition (Automated)
    - mount_option_var_log_noexec

    ##### 1.1.2.6.4 Ensure nosuid option set on /var/log partition (Automated)
    - mount_option_var_log_nosuid

    #### 1.1.2.7 Configure /var/log/audit ###
    ##### 1.1.2.7.1 Ensure separate partition exists for /var/log/audit (Automated)
    # Skip due to being Level 2

    ##### 1.1.2.7.2 Ensure noexec option set on /var/log/audit partition (Automated)
    - mount_option_var_log_audit_noexec

    ##### 1.1.2.7.3 Ensure nodev option set on /var/log/audit partition (Automated)
    - mount_option_var_log_audit_nodev

    ##### 1.1.2.7.4 Ensure nosuid option set on /var/log/audit partition (Automated)
    - mount_option_var_log_audit_nosuid

    ## 1.2 Configure Software Updates ##
    ### 1.2.1 Configure Package Repositories ###
    #### 1.2.1.1 Ensure GPG keys are configured (Manual)
    # Skip due to being a manual test

    #### 1.2.1.2 Ensure package manager repositories are configured (Manual)
    # Skip due to being a manual test

    ### 1.2.2 Configure Package Updates ###
    #### 1.2.2.1 Ensure updates, patches, and additional security software are installed (Manual)
    # Skip due to being a manual test

    ## 1.3 Mandatory Access Control ##
    ### 1.3.1 Configure AppArmor ###
    #### 1.3.1.1 Ensure AppArmor is installed (Automated)
    - package_apparmor_installed
    - package_apparmor-utils_installed

    #### 1.3.1.2 Ensure AppArmor is enabled in the bootloader configuration (Automated)
    - grub2_enable_apparmor

    #### 1.3.1.3 Ensure all AppArmor Profiles are in enforce or complain mode (Automated)
    - var_apparmor_mode=enforce
    - all_apparmor_profiles_in_enforce_complain_mode

    #### 1.3.1.4 Ensure all AppArmor Profiles are enforcing (Automated)
    # Skip due to being Level 2

    ## 1.4 Configure Bootloader ##
    ### 1.4.1 Ensure bootloader password is set (Automated)
    - grub2_uefi_password

    ### 1.4.2 Ensure permissions on bootloader config are configured (Automated)
    - file_owner_efi_grub2_cfg
    - file_permissions_efi_grub2_cfg

    ## 1.5 Additional Process Hardening ##
    ### 1.5.1 Ensure address space layout randomization (ASLR) is enabled (Automated)
    - sysctl_kernel_randomize_va_space

    ### 1.5.2 Ensure ptrace_scope is restricted (Automated)
    - sysctl_kernel_yama_ptrace_scope_value=1
    - sysctl_kernel_yama_ptrace_scope

    ### 1.5.3 Ensure core dumps are restricted (Automated)
    - disable_users_coredumps
    - sysctl_fs_suid_dumpable

    ### 1.5.4 Ensure prelink is disabled (Automated)
    - package_prelink_removed

    ### 1.5.5 Ensure Automatic Error Reporting is not enabled (Automated)
    - service_apport_disabled

    ## 1.6 Command Line Warning Banners ##
    ### 1.6.1 Ensure message of the day is configured properly (Automated)
    - cis_banner_text=cis
    - banner_etc_motd_cis

    ### 1.6.2 Ensure local login warning banner is configured properly (Automated)
    - cis_banner_text=cis
    - banner_etc_issue_cis

    ### 1.6.3 Ensure remote login warning banner is configured properly (Automated)
    - cis_banner_text=cis
    - banner_etc_issue_net_cis

    ### 1.6.4 Ensure permissions on /etc/motd are configured (Automated)
    - file_permissions_etc_motd
    - file_owner_etc_motd
    - file_groupowner_etc_motd

    ### 1.6.5 Ensure permissions on /etc/issue are configured (Automated)
    - file_permissions_etc_issue
    - file_owner_etc_issue
    - file_groupowner_etc_issue

    ### 1.6.6 Ensure permissions on /etc/issue.net are configured (Automated)
    - file_permissions_etc_issue_net
    - file_owner_etc_issue_net
    - file_groupowner_etc_issue_net

    ## 1.7 GNOME Display Manager ##
    ### 1.7.1 Ensure GNOME Display Manager is removed (Automated)
    # Skip due to being Level 2

    ### 1.7.2 Ensure GDM login banner is configured (Automated)
    - login_banner_text=cis_default
    - dconf_gnome_banner_enabled
    - dconf_gnome_login_banner_text

    ### 1.7.3 Ensure GDM disable-user-list option is enabled (Automated)
    - dconf_gnome_disable_user_list

    ### 1.7.4 Ensure GDM screen locks when the user is idle (Automated)
    - inactivity_timeout_value=15_minutes
    - var_screensaver_lock_delay=5_seconds
    - dconf_gnome_screensaver_idle_delay

    ### 1.7.5 Ensure GDM screen locks cannot be overridden (Automated)
    - dconf_gnome_screensaver_lock_enabled
    - dconf_gnome_screensaver_lock_delay

    ### 1.7.6 Ensure GDM automatic mounting of removable media is disabled (Automated)
    # Skip due to being Level 2

    ### 1.7.7 Ensure GDM disabling automatic mounting of removable media is not overridden (Automated)
    # Skip due to being Level 2

    ### 1.7.8 Ensure GDM autorun-never is enabled (Automated)
    - dconf_gnome_disable_autorun

    ### 1.7.9 Ensure GDM autorun-never is not overridden (Automated)
    # SAME AS ABOVE ??

    ### 1.7.10 Ensure XDCMP is not enabled (Automated)
    - gnome_gdm_disable_xdmcp

    # 2. Services #
    ## 2.1 Configure Server Services ##
    ### 2.1.1 Ensure autofs services are not in use (Automated)
    # Skip due to being Level 2

    ### 2.1.2 Ensure avahi daemon services are not in use (Automated)
    # Skip due to being Level 2

    ### 2.1.3 Ensure DHCP Server is not installed (Automated)
    - package_dhcp_removed
    - service_dhcpd_disabled
    - service_dhcpd6_disabled

    ### 2.1.4 Ensure DNS Server is not installed (Automated)
    - package_bind_removed
    - service_named_disabled

    ### 2.1.5 Ensure dnsmasq services are not in use (Automated)
    - package_dnsmasq_removed
    - service_dnsmasq_disabled

    ### 2.1.6 Ensure FTP Server is not installed (Automated)
    - package_vsftpd_removed
    - service_vsftpd_disabled

    ### 2.1.7 Ensure LDAP server is not installed (Automated)
    - package_openldap-servers_removed
    - service_slapd_disabled

    ### 2.1.8 Ensure IMAP and POP3 server are not installed (Automated)
    - package_dovecot_removed
    - service_dovecot_disabled

    ### 2.1.9 Ensure network file system services are not in use (Automated)
    - package_nfs-kernel-server_removed
    - service_nfs_disabled

    ### 2.1.10 Ensure NIS Server is not installed (Automated)
    - package_ypserv_removed
    - service_ypserv_disabled

    ### 2.1.11 Ensure CUPS is not installed (Automated)
    # Skip due to being Level 2

    ### 2.1.12 Ensure RPC is not installed (Automated)
    - package_rpcbind_removed
    - service_rpcbind_disabled

    ### 2.1.13 Ensure rsync service is not installed (Automated)
    - service_rsyncd_disabled

    ### 2.1.14 Ensure Samba is not installed (Automated)
    - package_samba_removed
    - service_smb_disabled

    ### 2.1.15 Ensure SNMP Server is not installed (Automated)
    - package_net-snmp_removed
    - service_snmpd_disabled

    ### 2.1.16 Ensure tftp server services are not in use (Automated)
    - package_tftp-server_removed
    - service_tftp_disabled

    ### 2.1.17 Ensure HTTP Proxy Server is not installed (Automated)
    - package_squid_removed
    - service_squid_disabled

    ### 2.1.18 Ensure HTTP server is not installed (Automated)
    - package_httpd_removed
    - package_nginx_removed
    - service_httpd_disabled
    - service_nginx_disabled

    ### 2.1.19 Ensure xinetd services are not in use (Automated)
    - package_xinetd_removed
    - service_xinetd_disabled

    ### 2.1.20 Ensure X Window System is not installed (Automated)
    # Skip due to being Level 2

    ### 2.1.21 Ensure mail transfer agent is configured for local-only mode (Automated)
    - var_postfix_inet_interfaces=loopback-only
    - postfix_network_listening_disabled
    - has_nonlocal_mta

    ### 2.1.22 Ensure only approved services are listening on a network interface (Manual)
    # Manual

    ## 2.2 Configure Client Services ##
    ### 2.2.1 Ensure NIS Client is not installed (Automated)
    - package_nis_removed

    ### 2.2.2 Ensure rsh client is not installed (Automated)
    - package_rsh_removed

    ### 2.2.3 Ensure talk client is not installed (Automated)
    - package_talk_removed

    ### 2.2.4 Ensure telnet client is not installed (Automated)
    - package_telnet_removed

    ### 2.2.5 Ensure LDAP client is not installed (Automated)
    - package_openldap-clients_removed

    ### 2.2.6 Ensure FTP client is not installed (Automated)
    - package_ftp_removed
    - package_tnftp_removed

    ## 2.3 Configure Time Synchronization ##
    ### 2.3.1 Ensure time synchronization is in use ###
    #### 2.3.1.1 Ensure a single time synchronization is in use (Automated)
    - ntp_single_service_active

    ### 2.3.2 Configure systemd-timesyncd ###
    #### 2.3.2.1 Ensure systemd-timesyncd configured with authorized timeserver (Manual)
    - var_multiple_time_servers=ubuntu
    - service_timesyncd_configured

    #### 2.3.2.2 Ensure systemd-timesyncd is enabled and running (Automated)
    - service_timesyncd_enabled

    ### 2.3.3 Configure chrony ###
    #### 2.3.3.1 Ensure chrony is configured with authorized timeserver (Manual)
    - var_multiple_time_servers=ubuntu
    - var_multiple_time_pools=ubuntu
    - chronyd_configure_pool_and_server

    #### 2.3.3.2 Ensure chrony is running as user _chrony (Automated)
    - chronyd_run_as_chrony_user

    #### 2.3.3.3 Ensure chrony is enabled and running (Automated)
    - service_chronyd_enabled

    ## 2.4 Job schedulers ##
    ### 2.4.1 Configure cron ###
    #### 2.4.1.1 Ensure cron daemon is enabled and running (Automated)
    - package_cron_installed
    - service_cron_enabled

    #### 2.4.1.2 Ensure permissions on /etc/crontab are configured (Automated)
    - file_permissions_crontab
    - file_owner_crontab
    - file_groupowner_crontab

    #### 2.4.1.3 Ensure permissions on /etc/cron.hourly are configured (Automated)
    - file_permissions_cron_hourly
    - file_owner_cron_hourly
    - file_groupowner_cron_hourly

    #### 2.4.1.4 Ensure permissions on /etc/cron.daily are configured (Automated)
    - file_permissions_cron_daily
    - file_owner_cron_daily
    - file_groupowner_cron_daily

    #### 2.4.1.5 Ensure permissions on /etc/cron.weekly are configured (Automated)
    - file_permissions_cron_weekly
    - file_owner_cron_weekly
    - file_groupowner_cron_weekly

    #### 2.4.1.6 Ensure permissions on /etc/cron.monthly are configured (Automated)
    - file_permissions_cron_monthly
    - file_owner_cron_monthly
    - file_groupowner_cron_monthly

    #### 2.4.1.7 Ensure permissions on /etc/cron.d are configured (Automated)
    - file_permissions_cron_d
    - file_owner_cron_d
    - file_groupowner_cron_d

    #### 2.4.1.8 Ensure cron is restricted to authorized users (Automated)
    - file_cron_deny_not_exist
    - file_cron_allow_exists
    - file_permissions_cron_allow
    - file_owner_cron_allow
    - file_groupowner_cron_allow

    ### 2.4.2 Configure at
    #### 2.4.2.1 Ensure at is restricted to authorized users (Automated)
    - file_at_allow_exists
    - file_groupowner_at_allow
    - file_owner_at_allow
    - file_permissions_at_allow
    - file_groupowner_at_deny
    - file_owner_at_deny
    - file_permissions_at_deny

    # 3 Network #
    ## 3.1 Configure Network Devices ##
    ### 3.1.1 Ensure IPv6 status is identified (Manual)
    # Skip due to being a manual test

    ### 3.1.2 Ensure wireless interfaces are disabled (Automated)
    # Skip due to being a manual test

    ### 3.1.3 Ensure bluetooth services are not in use (Automated)
    # Skip due to being Level 2

    ## 3.2 Configure Network Kernel Modules ##
    # Skip due to being Level 2
    ### 3.2.1 Ensure DCCP is disabled (Automated)
    # Skip due to being Level 2

    ### 3.2.2 Ensure SCTP is disabled (Automated)
    # Skip due to being Level 2

    ### 3.2.3 Ensure RDS is disabled (Automated)
    # Skip due to being Level 2

    ### 3.2.4 Ensure TIPC is disabled (Automated)
    # Skip due to being Level 2

    ## 3.3 Configure Network Kernel Parameters ##
    ### 3.3.1 Ensure IP forwarding is disabled (Automated)
    - sysctl_net_ipv4_ip_forward
    - sysctl_net_ipv6_conf_all_forwarding

    ### 3.3.2 Ensure packet redirect sending is disabled (Automated)
    - sysctl_net_ipv4_conf_all_send_redirects
    - sysctl_net_ipv4_conf_default_send_redirects

    ### 3.3.3 Ensure bogus ICMP responses are ignored (Automated)
    - sysctl_net_ipv4_icmp_ignore_bogus_error_responses

    ### 3.3.4 Ensure broadcast ICMP requests are ignored (Automated)
    - sysctl_net_ipv4_icmp_echo_ignore_broadcasts

    ### 3.3.5 Ensure ICMP redirects are not accepted (Automated)
    - sysctl_net_ipv4_conf_all_accept_redirects
    - sysctl_net_ipv4_conf_default_accept_redirects
    - sysctl_net_ipv6_conf_all_accept_redirects
    - sysctl_net_ipv6_conf_default_accept_redirects

    ### 3.3.6 Ensure secure ICMP redirects are not accepted (Automated)
    - sysctl_net_ipv4_conf_all_secure_redirects
    - sysctl_net_ipv4_conf_default_secure_redirects

    ### 3.3.7 Ensure Reverse Path Filtering is enabled (Automated)
    - sysctl_net_ipv4_conf_all_rp_filter
    - sysctl_net_ipv4_conf_default_rp_filter

    ### 3.3.8 Ensure source routed packets are not accepted (Automated)
    - sysctl_net_ipv4_conf_all_accept_source_route
    - sysctl_net_ipv4_conf_default_accept_source_route
    - sysctl_net_ipv6_conf_all_accept_source_route
    - sysctl_net_ipv6_conf_default_accept_source_route

    ### 3.3.9 Ensure suspicious packets are logged (Automated)
    - sysctl_net_ipv4_conf_all_log_martians
    - sysctl_net_ipv4_conf_default_log_martians

    ### 3.3.10 Ensure TCP SYN Cookies is enabled (Automated)
    - sysctl_net_ipv4_tcp_syncookies

    ### 3.3.11 Ensure IPv6 router advertisements are not accepted (Automated)
    - sysctl_net_ipv6_conf_all_accept_ra
    - sysctl_net_ipv6_conf_default_accept_ra

    # 4. Host Based Firewall #
    ## 4.1 Configure UncomplicatedFirewall ##
    ### 4.1.1 Ensure ufw is installed (Automated)
    - package_ufw_installed

    ### 4.1.2 Ensure iptables-persistent is not installed with ufw (Automated)
    - package_iptables-persistent_removed

    ### 4.1.3 Ensure ufw service is enabled (Automated)
    - check_ufw_active
    - service_ufw_enabled

    ### 4.1.4 Ensure ufw loopback traffic is configured (Automated)
    - set_ufw_loopback_traffic

    ### 4.1.5 Ensure ufw outbound connections are configured (Manual)
    # Skip due to being a manual test

    ### 4.1.6 Ensure ufw firewall rules exist for all open ports (Automated)
    - ufw_rules_for_open_ports

    ### 4.1.7 Ensure ufw default deny firewall policy (Automated)
    - set_ufw_default_rule

    # Skip due to using UFW
    ### 4.2 Configure nftables ###
    ### 4.2.1 Ensure nftables is installed (Automated)
    #- package_nftables_installed

    ### 4.2.2 Ensure ufw is uninstalled or disabled with nftables (Automated)
    #- package_ufw_removed

    ### 4.2.3 Ensure iptables are flushed with nftables (Manual)
    # Skip due to being a manual test

    ### 4.2.4 Ensure a nftables table exists (Automated)
    #- var_nftables_family=inet
    #- var_nftables_table=filter
    #- set_nftables_table

    ### 4.2.5 Ensure nftables base chains exist (Automated)
    #- var_nftables_base_chain_names=chain_names
    #- var_nftables_base_chain_types=chain_types
    #- var_nftables_base_chain_hooks=chain_hooks
    #- var_nftables_base_chain_priorities=chain_priorities
    #- var_nftables_base_chain_policies=chain_policies
    #- set_nftables_base_chain

    ### 4.2.6 Ensure nftables loopback traffic is configured (Automated)
    #- set_nftables_loopback_traffic

    ### 4.2.7 Ensure nftables outbound and established connections are configured (Manual)
    # Skip due to being a manual test

    ### 4.2.8 Ensure nftables default deny firewall policy (Automated)
    #- nftables_ensure_default_deny_policy

    ### 4.2.9 Ensure nftables service is enabled (Automated)
    #- service_nftables_enabled

    ### 4.2.10 Ensure nftables rules are permanent (Automated)
    #- var_nftables_master_config_file=etc
    #- nftables_rules_permanent

    ## 4.3 Configure iptables ###
    ### 4.3.1 Configure iptables software ###
    ##### 4.3.1.1 Ensure iptables packages are installed (Automated)
    #- package_iptables_installed
    #- package_iptables-persistent_installed

    #### 4.3.1.2 Ensure nftables is not installed with iptables (Automated)
    #- service_nftables_disabled
    #- package_nftables_removed

    #### 4.3.1.3 Ensure ufw is uninstalled or disabled with iptables (Automated)
    #- package_ufw_removed

    ### 4.3.2 Configure IPv4 iptables ###
    #### 4.3.2.1 Ensure iptables default deny firewall policy (Automated)
    #- set_iptables_default_rule

    #### 4.3.2.2 Ensure iptables loopback traffic is configured (Automated)
    #- set_loopback_traffic

    #### 4.3.2.3 Ensure iptables outbound and established connections are configured (Manual)
    # Skip due to being a manual test

    #### 4.3.2.4 Ensure iptables firewall rules exist for all open ports (Automated)
    #- iptables_rules_for_open_ports

    ### 4.3.3 Configure IPv6 ip6tables ####
    #### 4.3.3.1 Ensure ip6tables default deny firewall policy (Automated)
    #- set_ip6tables_default_rule

    #### 4.3.3.2 Ensure ip6tables loopback traffic is configured (Automated)
    #- set_ipv6_loopback_traffic

    #### 4.3.3.3 Ensure ip6tables outbound and established connections are configured (Manual)
    # Skip due to being a manual test

    #### 4.3.3.4 Ensure ip6tables firewall rules exist for all open ports (Automated)
    #- ip6tables_rules_for_open_ports

    # 5 Access Control #
    ## 5.1 Configure SSH Server ##
    ### 5.1.1 Ensure permissions on /etc/ssh/sshd_config are configured (Automated)
    - file_permissions_sshd_config
    - file_owner_sshd_config
    - file_groupowner_sshd_config

    ### 5.1.2 Ensure permissions on SSH private host key files are configured (Automated)
    - file_permissions_sshd_private_key

    ### 5.1.3 Ensure permissions on SSH public host key files are configured (Automated)
    - file_permissions_sshd_pub_key

    ### 5.1.4 Ensure sshd access is configured (Automated)
    - sshd_limit_user_access

    ### 5.1.5 Ensure sshd Banner is configured (Automated) 
    - sshd_enable_warning_banner_net

    ### 5.1.6 Ensure sshd Ciphers are configured (Automated)
    - sshd_use_strong_ciphers

    ### 5.1.7 Ensure sshd ClientAliveInterval and ClientAliveCountMax are configured (Automated)
    - sshd_idle_timeout_value=5_minutes
    - sshd_set_idle_timeout
    - var_sshd_set_keepalive=3
    - sshd_set_keepalive

    ### 5.1.8 Ensure sshd DisableForwarding is enabled (Automated)
    - sshd_disable_forwarding

    ### 5.1.9 Ensure sshd GSSAPIAuthentication is disabled (Automated)
    - sshd_disable_gssapi_auth

    ### 5.1.10 Ensure sshd HostbasedAuthentication is disabled (Automated)
    - disable_host_auth

    ### 5.1.11 Ensure sshd IgnoreRhosts is enabled (Automated)
    - sshd_disable_rhosts

    ### 5.1.12 Ensure sshd KexAlgorithms is configured (Automated)
    - sshd_strong_kex=cis_ubuntu2404
    - sshd_use_strong_kex

    ### 5.1.13 Ensure sshd LoginGraceTime is set to one minute or less (Automated)
    - var_sshd_set_login_grace_time=60
    - sshd_set_login_grace_time

    ### 5.1.14 Ensure sshd LogLevel is configured (Automated)
    - sshd_set_loglevel_info

    ### 5.1.15 Ensure sshd MACs are configured (Automated)
    - sshd_strong_macs=cis_ubuntu2404
    - sshd_use_strong_macs

    ### 5.1.16 Ensure sshd MaxAuthTries is configured (Automated)
    - sshd_max_auth_tries_value=4
    - sshd_set_max_auth_tries

    ### 5.1.17 Ensure sshd MaxSessions is configured (Automated
    - var_sshd_max_sessions=10
    - sshd_set_max_sessions

    ### 5.2.18 Ensure sshd MaxStartups is configured (Automated)
    - var_sshd_set_maxstartups=10:30:60
    - sshd_set_maxstartups

    ### 5.1.19 Ensure sshd PermitEmptyPasswords is disabled (Automated)
    - sshd_disable_empty_passwords

    ### 5.1.20 Ensure sshd PermitRootLogin is disabled (Automated)
    - sshd_disable_root_login

    ### 5.1.21 Ensure sshd PermitUserEnvironment is disabled (Automated)
    - sshd_do_not_permit_user_env

    ### 5.1.22 Ensure sshd UsePAM is enabled (Automated)
    - sshd_enable_pam

    ## 5.2 Configure privilege escalation
    ### 5.2.1 Ensure sudo is installed (Automated)
    - package_sudo_installed

    ### 5.2.2 Ensure sudo commands use pty (Automated)
    - sudo_add_use_pty

    ### 5.2.3 Ensure sudo log file exists (Automated)
    - sudo_custom_logfile

    ### 5.2.4 Ensure users must provide password for privilege escalation (Automated)
    # Skip due to being Level 2

    ### 5.2.5 Ensure re-authentication for privilege escalation is not disabled globally (Automated)
    - sudo_remove_no_authenticate

    ### 5.2.6 Ensure sudo authentication timeout is configured correctly (Automated)
    - var_sudo_timestamp_timeout=15_minutes
    - sudo_require_reauthentication

    ### 5.2.7 Ensure access to the su command is restricted (Automated)
    - var_pam_wheel_group_for_su=cis
    - use_pam_wheel_group_for_su
    - ensure_pam_wheel_group_empty

    ## 5.3 Pluggable Authentication Modules ##
    ### 5.3.1 Configure PAM software packages ###
    #### 5.3.1.1 Ensure latest version of pam is installed (Automated)
    # No check

    #### 5.3.1.2 Ensure libpam-modules is installed (Automated)
    # No check

    #### 5.3.1.3 Ensure libpam-pwquality is installed (Automated) 
    - package_pam_pwquality_installed

    ### 5.3.2 Configure pam-auth-update profiles ###
    #### 5.3.2.1 Ensure pam_unix module is enabled (Automated)
    - accounts_password_pam_unix_enabled

    #### 5.3.2.2 Ensure pam_faillock module is enabled (Automated)
    - accounts_passwords_pam_faillock_enabled

    #### 5.3.2.3 Ensure pam_pwquality module is enabled (Automated)
    - accounts_password_pam_pwquality_enabled

    #### 5.3.2.4 Ensure pam_pwhistory module is enabled (Automated)
    - accounts_password_pam_pwhistory_enabled

    ### 5.3.3 Configure PAM Arguments ###
    #### 5.3.3.1 Configure pam_faillock module ####
    ##### 5.3.3.1.1 Ensure password failed attempts lockout is configured (Automated)
    - var_accounts_passwords_pam_faillock_deny=4
    - accounts_passwords_pam_faillock_deny

    ##### 5.3.3.1.2 Ensure password failed attempts lockout is configured (Automated)
    - var_accounts_passwords_pam_faillock_unlock_time=600
    - accounts_passwords_pam_faillock_unlock_time

    ##### 5.3.3.1.3 Ensure password failed attempts lockout includes root account (Automated)
    # Skip due to L2
    
    #### 5.3.3.2 Configure pam_faillock module ####
    ##### 5.3.3.2.1 Ensure password number of changed characters is configured (Automated)
    - var_password_pam_difok=2
    - accounts_password_pam_difok
    
    ##### 5.3.3.2.2 Ensure minimum password length is configured (Automated)
    - var_password_pam_minlen=14
    - accounts_password_pam_minlen

    ##### 5.3.3.2.3 Ensure password complexity is configured (Manual)
    - var_password_pam_minclass=4
    - accounts_password_pam_minclass
    - var_password_pam_dcredit=1
    - accounts_password_pam_dcredit
    - var_password_pam_ucredit=1
    - accounts_password_pam_ucredit
    - var_password_pam_ocredit=1
    - accounts_password_pam_ocredit
    - var_password_pam_lcredit=1
    - accounts_password_pam_lcredit
    - var_password_pam_retry=3

    ##### 5.3.3.2.4 Ensure password same consecutive characters is configured (Automated)
    - var_password_pam_maxrepeat=3
    - accounts_password_pam_maxrepeat

    ##### 5.3.3.2.5 Ensure password maximum sequential characters is configured (Automated)
    - accounts_password_pam_maxsequence

    ##### 5.3.3.2.6 Ensure password dictionary check is enabled (Automated)
    - var_password_pam_dictcheck=1
    - accounts_password_pam_dictcheck

    ##### 5.3.3.2.7 Ensure password quality checking is enforced (Automated)
    - var_password_pam_enforcing=1
    - accounts_password_pam_enforcing

    ##### 5.3.3.2.8 Ensure password quality is enforced for the root user (Automated)
    - accounts_password_pam_enforce_root

    #### 5.3.3.3 Configure pam_pwhistory module ####
    ##### 5.3.3.3.1 Ensure password history remember is configured (Automated)
    - var_password_pam_remember=5
    - accounts_password_pam_pwhistory_remember

    ##### 5.3.3.3.2 Ensure password history is enforced for the root user (Automated)
    - accounts_password_pam_pwhistory_enforce_root

    ##### 5.3.3.3.3 Ensure pam_pwhistory includes use_authtok (Automated)
    - accounts_password_pam_pwhistory_use_authtok

    #### 5.3.3.4 Configure pam_unix module ####
    ##### 5.3.3.4.1 Ensure pam_unix does not include nullok (Automated)
    - no_empty_passwords

    ##### 5.3.3.4.2 Ensure pam_unix does not include remember (Automated)
    - accounts_password_pam_unix_no_remember

    ##### 5.3.3.4.3 Ensure pam_unix includes a strong password hashing algorithm (Automated)
    - var_password_hashing_algorithm_pam=yescrypt
    - set_password_hashing_algorithm_systemauth

    ##### 5.3.3.4.4 Ensure pam_unix includes use_authtok (Automated)
    - accounts_password_pam_unix_authtok
    
    ## 5.4 User Accounts and Environment ##
    ### 5.4.1 Configure shadow password suite parameters ###
    #### 5.4.1.1 Ensure password expiration is configured (Automated)
    - var_accounts_maximum_age_login_defs=365
    - accounts_maximum_age_login_defs
    - accounts_password_set_max_life_existing

    #### 5.4.1.2 Ensure minimum password days is configured (Manual)
    # Skip L2

    #### 5.4.1.3 Ensure password expiration warning days is configured (Automated)
    - var_accounts_password_warn_age_login_defs=7
    - accounts_password_warn_age_login_defs

    #### 5.4.1.4 Ensure strong password hashing algorithm is configured (Automated)
    - var_password_hashing_algorithm=yescrypt
    - set_password_hashing_algorithm_logindefs

    #### 5.4.1.5 Ensure inactive password lock is configured (Automated)
    - var_account_disable_post_pw_expiration=45
    - account_disable_post_pw_expiration

    #### 5.4.1.6 Ensure all users last password change date is in the past (Automated)
    - accounts_password_last_change_is_in_past

    ### 5.4.2 Configure root and system accounts and environment ###
    #### 5.4.2.1 Ensure root is the only UID 0 account (Automated)
    - accounts_no_uid_except_zero

    #### 5.4.2.2 Ensure root is the only GID 0 account (Automated)
    - accounts_root_gid_zero

    #### 5.4.2.3 Ensure group root is the only GID 0 group (Automated)
    - groups_no_zero_gid_except_root

    #### 5.4.2.4 Ensure root account access is controlled (Automated)
    - ensure_root_access_controlled

    #### 5.4.2.5 Ensure root path integrity (Automated)
    - accounts_root_path_dirs_no_write
    - root_path_all_dirs
    - root_path_no_dot
    - no_dirs_unowned_by_root

    #### 5.4.2.6 Ensure root user umask is configured (Automated)
    - accounts_umask_root

    #### 5.4.2.7 Ensure system accounts do not have a valid login shell (Automated)
    - no_shelllogin_for_systemaccounts

    #### 5.4.2.8 Ensure accounts without a valid login shell are locked (Automated)
    # No check

    ### 5.4.3 Configure user default environment ###
    #### 5.4.3.1 Ensure nologin is not listed in /etc/shells (Automated)
    # Skip L2

    #### 5.4.3.2 Ensure default user shell timeout is configured (Automated)
    - var_accounts_tmout=15_min
    - accounts_tmout

    #### 5.4.3.3 Ensure default user umask is configured (Automated)
    - var_accounts_user_umask=022
    - accounts_umask_etc_bashrc
    - accounts_umask_etc_login_defs
    - accounts_umask_etc_profile

    # 6 Logging and Auditing #
    ## 6.1 System Logging ##
    ### 6.1.1 Configure systemd-journald service ###
    #### 6.1.1.1 Ensure journald service is enabled and active (Automated)
    - service_systemd-journald_enabled

    #### 6.1.1.2 Ensure journald log file access is configured (Manual)
    # No check

    #### 6.1.1.3 Ensure journald log file rotation is configured (Manual)
    # No check

    #### 6.1.1.4 Ensure only one logging system is in use (Automated) 
    - logging_services_active

    ### 6.1.2 Configure journald ###    
    #### 6.1.2.1 Configure systemd-journal-remote
    ##### 6.1.2.1.1 Ensure systemd-journal-remote is installed (Automated)
    - package_systemd-journal-remote_installed

    ##### 6.1.2.1.2 Ensure systemd-journal-remote authentication is configured (Manual)    
    # No check

    ##### 6.1.2.1.3 Ensure systemd-journal-upload is enabled and active (Automated)
    - service_systemd-journal-upload_enabled

    ##### 6.2.1.2.4 Ensure systemd-journal-remote service is not in use (Automated)
    - socket_systemd-journal-remote_disabled
    
    ##### 6.1.2.2 Ensure journald ForwardToSyslog is disabled (Automated)
    - journald_disable_forward_to_syslog

    ##### 6.1.2.3 Ensure journald Compress is configured (Automated)
    - journald_compress

    ##### 6.1.2.4 Ensure journald Storage is configured (Automated)
    - journald_storage

    ### 6.1.3 Configure rsyslog ###    
    #### 6.1.3.1 Ensure rsyslog is installed (Automated)
    - package_rsyslog_installed

    #### 6.1.3.2 Ensure rsyslog service is enabled and active (Automated)
    - service_rsyslog_enabled

    #### 6.1.3.3 Ensure journald is configured to send logs to rsyslog (Automated)
    - journald_forward_to_syslog

    #### 6.1.3.4 Ensure rsyslog log file creation mode is configured (Automated)
    - rsyslog_filecreatemode

    #### 6.1.3.5 Ensure rsyslog logging is configured (Manual)
    # Manual 

    #### 6.1.3.6 Ensure rsyslog is configured to send logs to a remote log host (Manual)
    - rsyslog_remote_loghost

    #### 6.1.3.7 Ensure rsyslog is not configured to receive logs from a remote client (Automated)
    - rsyslog_nolisten

    #### 6.1.3.8 Ensure logrotate is configured (Manual)
    # Manual

    ### 6.1.4 Configure Logfiles ###
    #### 6.1.4.1 Ensure access to all logfiles has been configured (Automated)
    - permissions_local_var_log

    ## 6.2 System Auditing ##
    # Skip due to L2

    ## 6.3 Configure Filesystem Integrity Checking ##
    ### 6.3.1 Ensure AIDE is installed (Automated)
    - package_aide_installed
    - aide_build_database

    ### 6.3.2 Ensure filesystem integrity is regularly checked (Automated)
    - aide_periodic_checking_systemd_timer

    ### 6.3.3 Ensure cryptographic mechanisms are used to protect the integrity of audit tools (Automated)
    - aide_check_audit_tools

    # 7 System Maintenance
    ## 7.1 System File Permissions ##
    ### 7.1.1 Ensure permissions on /etc/passwd are configured (Automated)
    - file_permissions_etc_passwd
    - file_owner_etc_passwd
    - file_groupowner_etc_passwd

    ### 7.1.2 Ensure permissions on /etc/passwd- are configured (Automated)
    - file_permissions_backup_etc_passwd
    - file_owner_backup_etc_passwd
    - file_groupowner_backup_etc_passwd

    ### 7.1.3 Ensure permissions on /etc/group are configured (Automated)
    - file_permissions_etc_group
    - file_owner_etc_group
    - file_groupowner_etc_group

    ### 7.1.4 Ensure permissions on /etc/group- are configured (Automated)
    - file_permissions_backup_etc_group
    - file_owner_backup_etc_group
    - file_groupowner_backup_etc_group

    ### 7.1.5 Ensure permissions on /etc/shadow are configured (Automated)
    - file_permissions_etc_shadow
    - file_owner_etc_shadow
    - file_groupowner_etc_shadow

    ### 7.1.6 Ensure permissions on /etc/shadow- are configured (Automated)
    - file_permissions_backup_etc_shadow
    - file_owner_backup_etc_shadow
    - file_groupowner_backup_etc_shadow

    ### 7.1.7 Ensure permissions on /etc/gshadow are configured (Automated)
    - file_permissions_etc_gshadow
    - file_owner_etc_gshadow
    - file_groupowner_etc_gshadow

    ### 7.1.8 Ensure permissions on /etc/gshadow- are configured (Automated)
    - file_permissions_backup_etc_gshadow
    - file_owner_backup_etc_gshadow
    - file_groupowner_backup_etc_gshadow

    ### 7.1.9 Ensure permissions on /etc/shells are configured (Automated)
    - file_owner_etc_shells
    - file_groupowner_etc_shells
    - file_permissions_etc_shells

    ### 7.1.10 Ensure permissions on /etc/security/opasswd are configured (Automated)
    - file_owner_etc_security_opasswd
    - file_groupowner_etc_security_opasswd
    - file_permissions_etc_security_opasswd
    - file_owner_etc_security_opasswd_old
    - file_groupowner_etc_security_opasswd_old
    - file_permissions_etc_security_opasswd_old

    ### 7.1.11 Ensure world writable files and directories are secured (Automated)
    - file_permissions_unauthorized_world_writable

    ### 7.1.12 Ensure no files or directories without an owner and a group exist (Automated)
    - file_permissions_ungroupowned
    - no_files_unowned_by_user

    ### 7.1.13 Ensure SUID and SGID files are reviewed (Manual)
    # Skip due to being a manual test

    ## 7.2 Local User and Group Settings ##
    ### 7.2.1 Ensure accounts in /etc/passwd use shadowed passwords (Automated)
    - accounts_password_all_shadowed

    ### 7.2.2 Ensure /etc/shadow password fields are not empty (Automated)
    - no_empty_passwords_etc_shadow

    ### 7.2.3 Ensure all groups in /etc/passwd exist in /etc/group (Automated)
    - gid_passwd_group_same

    ### 7.2.4 Ensure shadow group is empty (Automated)
    - ensure_shadow_group_empty

    ### 7.2.5 Ensure no duplicate UIDs exist (Automated)
    - account_unique_id

    ### 7.2.6 Ensure no duplicate GIDs exist (Automated)
    - group_unique_id

    ### 7.2.7 Ensure no duplicate user names exist (Automated)
    - account_unique_name

    ### 7.2.8 Ensure no duplicate group names exist (Automated)
    - group_unique_name

    ### 7.2.9 Ensure local interactive user home directories are configured
    - accounts_user_interactive_home_directory_exists
    - file_groupownership_home_directories
    - file_ownership_home_directories
    - file_permissions_home_directories

    ### 7.2.10 Ensure local interactive user dot files access is configured (Automated)
    - no_rsh_trust_files
    - no_forward_files
    - no_netrc_files
    - accounts_user_dot_user_ownership
    - accounts_user_dot_group_ownership
    - file_permission_user_init_files
    - file_permission_user_bash_history
