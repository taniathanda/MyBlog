MyBlog Project
=================

1. Create repository in GitHub , git clone and create project folder in Xampp\htdocs\ 
2. Draw database design and create database/tables in Xampp\phpMyAdmin
3. Go to "https://startbootstrap.com/template/blog-home". Get free download
4. Go to "https://startbootstrap.com/template/blog-post". Get free download
5. Go inside blog post folder. change name of "index.html" into "detail.html"
6. Copy this detail.html into blog home folder.
7. Copy everything from blog home folder into Xampp\htdocs\MyBlog 
8. Try to type in local browser. http://localhost:8080/MyBlog/ (So, you will see the template design of your blog)

9. Separating common parts of pages
   - in index.php, cut everything above of nav and including nav, and paste in layouts\navbar.php
   - cut everything from Side widgets and all the way below, and paste in layout\footer.php

10. in index.php and detail.php, write php for footer and navbar
11. download "https://startbootstrap.com/template/simple-sidebar" , extract all , and change folder name as "admin"
12. copy this admin folder into the project file , and change index.html to index.php
13. create layouts folder inside admin folder, create footer.php and narbar_side.php inside it
14. Go to admin\index.php. cut everything from !DoCtype to close of nav tab, and paste into navbar_side.php
15. And cut everything below part of index.php and paste into admin\footer.php
</div>
        </div>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>

16. call footer and navbar php in index.php
-------------------------------------------------------
Notes --> downloaded blog home and blog posts are in Download\For MyBlog Project. (for reference to check)