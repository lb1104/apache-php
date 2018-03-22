# apache-php
docker apache-php

~~~
docker run --name web --restart always -d -v $fold_path:/work -p 80:80 lb1104/apache-php httpd -DFOREGROUND
~~~

