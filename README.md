# excel_writer

This is a toy example that uses OpenPyxl and Psycopg2 to write an Excel workbook from a contrived query against the [Pagila](https://github.com/devrimgunduz/pagila) database.

With Docker installed on your machine, clone this repository:
```
morganek@TPX1Y3 ~ % git clone git@github.com:Databrains/excel_writer.git
Cloning into 'excel_writer'...
remote: Enumerating objects: 19, done.
remote: Counting objects: 100% (19/19), done.
remote: Compressing objects: 100% (15/15), done.
remote: Total 19 (delta 5), reused 17 (delta 3), pack-reused 0
Receiving objects: 100% (19/19), 18.01 KiB | 9.00 MiB/s, done.
Resolving deltas: 100% (5/5), done.
morganek@TPX1Y3 ~ % 
```
Enter the new `excel_writer` directory and clone Pagila into it:
```
morganek@TPX1Y3 ~ % cd excel_writer 
morganek@TPX1Y3 ~/excel_writer
 % git clone git@github.com:devrimgunduz/pagila.git
Cloning into 'pagila'...
remote: Enumerating objects: 36, done.
remote: Counting objects: 100% (36/36), done.
remote: Compressing objects: 100% (25/25), done.
remote: Total 80 (delta 16), reused 30 (delta 11), pack-reused 44
Receiving objects: 100% (80/80), 3.63 MiB | 10.18 MiB/s, done.
Resolving deltas: 100% (35/35), done.
morganek@TPX1Y3 ~/excel_writer
```
Create a Python3 virtual environment and then activate it:
```
morganek@TPX1Y3 ~/excel_writer
 % python3 -mvenv venv
morganek@TPX1Y3 ~/excel_writer
 % . venv/bin/activate
morganek@TPX1Y3 ~/excel_writer
 % 
```
Install all the requirements:
```
morganek@TPX1Y3 ~/excel_writer
 % pip install -r requirements.txt 
Collecting attrs==20.3.0 (from -r requirements.txt (line 1))
  Using cached https://files.pythonhosted.org/packages/c3/aa/cb45262569fcc047bf070b5de61813724d6726db83259222cd7b4c79821a/attrs-20.3.0-py2.py3-none-any.whl

<Lots of extra lines snipped>

Installing collected packages: attrs, pycparser, cffi, six, bcrypt, cached-property, certifi, chardet, cryptography, distro, urllib3, idna, requests, websocket-client, docker, pyrsistent, zipp, typing-extensions, importlib-metadata, jsonschema, python-dotenv, docopt, dockerpty, PyYAML, texttable, docker-compose, et-xmlfile, jdcal, openpyxl, PyNaCl, paramiko, psycopg2-binary
  Running setup.py install for pyrsistent ... done
  Running setup.py install for docopt ... done
  Running setup.py install for dockerpty ... done
Successfully installed PyNaCl-1.4.0 PyYAML-5.4.1 attrs-20.3.0 bcrypt-3.2.0 cached-property-1.5.2 certifi-2020.12.5 cffi-1.14.4 chardet-4.0.0 cryptography-3.3.1 distro-1.5.0 docker-4.4.1 docker-compose-1.28.2 dockerpty-0.4.1 docopt-0.6.2 et-xmlfile-1.0.1 idna-2.10 importlib-metadata-3.4.0 jdcal-1.4.1 jsonschema-3.2.0 openpyxl-3.0.6 paramiko-2.7.2 psycopg2-binary-2.8.6 pycparser-2.20 pyrsistent-0.17.3 python-dotenv-0.15.0 requests-2.25.1 six-1.15.0 texttable-1.6.3 typing-extensions-3.7.4.3 urllib3-1.26.3 websocket-client-0.57.0 zipp-3.4.0
You are using pip version 10.0.1, however version 21.0 is available.
You should consider upgrading via the 'pip install --upgrade pip' command.
morganek@TPX1Y3 ~/excel_writer
 % 
```
Start your docker-compose PostgreSQL container:
```
morganek@TPX1Y3 ~/excel_writer
 % docker-compose up -d
Creating network "excelwriter_default" with the default driver
Creating db ... 
Creating db ... done
morganek@TPX1Y3 ~/excel_writer
 % 
```
Execute the script and see the resulting file:
```
morganek@TPX1Y3 ~/excel_writer
 % python3 write_excel.py 
morganek@TPX1Y3 ~/excel_writer
 % ls -l Sample.xlsx 
-rw-r--r-- 1 morganek morganek 16728 Jan 29 14:46 Sample.xlsx
morganek@TPX1Y3 ~/excel_writer
 % 
```

