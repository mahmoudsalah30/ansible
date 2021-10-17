ctrate directory 
================================
[root@controlnode test]# ansible localhost  -m file -a 'path=/tmp/data state=dir                                                                                                                                                             ectory'
localhost | CHANGED => {
    "changed": true,
    "gid": 0,
    "group": "root",
    "mode": "0755",
    "owner": "root",
    "path": "/tmp/data",
    "secontext": "unconfined_u:object_r:user_tmp_t:s0",
    "size": 6,
    "state": "directory",
    "uid": 0
}
[root@controlnode test]# ansible web  -m file -a 'path=/tmp/data state=directory' -i inventory.txt
web | CHANGED => {
    "ansible_facts": {
        "discovered_interpreter_python": "/usr/bin/python"
    },
    "changed": true,
    "gid": 0,
    "group": "root",
    "mode": "0755",
    "owner": "root",
    "path": "/tmp/data",
    "secontext": "unconfined_u:object_r:user_tmp_t:s0",
    "size": 6,
    "state": "directory",
    "uid": 0
}
[root@controlnode test]#
[root@controlnode test]#
`



copy
==============

[root@controlnode test]# ansible web -m ansible.builtin.copy -a "src=/etc/hosts dest=/tmp/hosts"  -i inventory.txt
web | CHANGED => {
    "ansible_facts": {
        "discovered_interpreter_python": "/usr/bin/python"
    },
    "changed": true,
    "checksum": "222c01b0b50db7932ab4bd6494f1481baa3b66f9",
    "dest": "/tmp/hosts",
    "gid": 0,
    "group": "root",
    "md5sum": "5aafbc777ced1dabc290bcf50485d995",
    "mode": "0644",
    "owner": "root",
    "secontext": "unconfined_u:object_r:admin_home_t:s0",
    "size": 224,
    "src": "/root/.ansible/tmp/ansible-tmp-1634481899.0-4903-41242374903677/source",
    "state": "file",
    "uid": 0
}
[root@controlnode test]#





[root@controlnode test]# ansible web -m copy -a "src=/etc/hosts dest=/tmp/data/hosts"  -i inventory.txt
web | CHANGED => {
    "ansible_facts": {
        "discovered_interpreter_python": "/usr/bin/python"
    },
    "changed": true,
    "checksum": "222c01b0b50db7932ab4bd6494f1481baa3b66f9",
    "dest": "/tmp/data/hosts",
    "gid": 0,
    "group": "root",
    "md5sum": "5aafbc777ced1dabc290bcf50485d995",
    "mode": "0644",
    "owner": "root",
    "secontext": "unconfined_u:object_r:admin_home_t:s0",
    "size": 224,
    "src": "/root/.ansible/tmp/ansible-tmp-1634481967.99-4956-188709331459798/source",
    "state": "file",
    "uid": 0
}
[root@controlnode test]#





line in file  
-----------------


[root@controlnode test]# ansible web -m lineinfile -a 'path=/tmp/data/hosts state=present line=ihiiiii' -i inventory.txt
web | CHANGED => {
    "ansible_facts": {
        "discovered_interpreter_python": "/usr/bin/python"
    },
    "backup": "",
    "changed": true,
    "msg": "line added"
}
[root@controlnode test]# ansible web -m lineinfile -a 'path=/tmp/data/hosts state=present line="mahmoud=ihiiiii"' -i inventory.txt
web | CHANGED => {
    "ansible_facts": {
        "discovered_interpreter_python": "/usr/bin/python"
    },
    "backup": "",
    "changed": true,
    "msg": "line added"



install package 
-----------------
[root@controlnode test]# ansible web -m package -a 'name=lsof  state=present' -i inventory.txt
web | SUCCESS => {
    "ansible_facts": {
        "discovered_interpreter_python": "/usr/bin/python"
    },
    "changed": false,
    "msg": "",
    "rc": 0,
    "results": [
        "lsof-4.87-6.el7.x86_64 providing lsof is already installed"
    ]
}



