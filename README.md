conch
=====
![picture](https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUkLLfJtrnWvfctFoUQ_1crK8wZ6bWU4vreS1vkjr2i4xOa1n4Hw)

A shell script to CURL all routes and render their JSON to separate files.
**Usage:**

Populate `get_routes.txt` file with the GET routes to visit.  Optionally an output filename can be included.

**`get_routes.txt` format:**

/posts/user/3141,JSON_posts_user_id

Calling conch:
bash conch.sh
