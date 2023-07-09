# Threads API

Unofficial Ruby client for Meta's Threads(threads.net).

- [Threads API](#threads-api)
  - [Installation](#installation)
  - [Initialization](#initialization)
  - [API](#api)
    - [1. Get User By Username](#1-get-user-by-username)
    - [2. Get User Id By Username](#2-get-user-id-by-username)
    - [3. Get User Threads](#3-get-user-threads)
    - [4. Get User Replies](#4-get-user-replies)
    - [5. Get Post By post\_id](#5-get-post-by-post_id)
  - [TODO](#todo)
  - [Contributors](#contributors)

## Installation

GemFile:

`gem 'meta_threads', '~> 1.0'`

Manually Install:

`gem install meta_threads`

## Initialization

`api_client = MetaThreads::ApiClient.new`

## API

```ruby
api_client = MetaThreads::ApiClient.new
api_client.get_user('user_name')
api_client.get_user_id_from_username('user_name')
api_client.get_user_threads('user_name')
api_client.get_user_replies('user_name')
api_client.get_post('post_id')
```

### 1. Get User By Username

<details>
<summary>Output</summary>

```ruby
> api_client.get_user('zuck')

{"data"=>
  {"userData"=>
    {"user"=>
      {"is_private"=>false,
       "profile_pic_url"=>
        "https://scontent.cdninstagram.com/v/t51.2885-19/357376107_1330597350674698_8884059223384672080_n.jpg?stp=dst-jpg_s150x150&_nc_ht=scontent.cdninstagram.com&_nc_cat=1&_nc_ohc=euIj8dtTGIkAX-F32Fc&edm=APs17CUBAAAA&ccb=7-5&oh=00_AfA0BphDyDlRZoK4Z0JxzzeiXM-uRNEXq9WCwTVgxKVo8g&oe=64ACDDC0&_nc_sid=10d13b",
       "username"=>"zuck",
       "hd_profile_pic_versions"=>
        [{"height"=>320,
          "url"=>
           "https://scontent.cdninstagram.com/v/t51.2885-19/357376107_1330597350674698_8884059223384672080_n.jpg?stp=dst-jpg_s320x320&_nc_ht=scontent.cdninstagram.com&_nc_cat=1&_nc_ohc=euIj8dtTGIkAX-F32Fc&edm=APs17CUBAAAA&ccb=7-5&oh=00_AfCXK7DYinFY9BBmh79mtKv6pERBYXHWSGLm1lOion0Cyg&oe=64ACDDC0&_nc_sid=10d13b",
          "width"=>320},
         {"height"=>640,
          "url"=>
           "https://scontent.cdninstagram.com/v/t51.2885-19/357376107_1330597350674698_8884059223384672080_n.jpg?stp=dst-jpg_s640x640&_nc_ht=scontent.cdninstagram.com&_nc_cat=1&_nc_ohc=euIj8dtTGIkAX-F32Fc&edm=APs17CUBAAAA&ccb=7-5&oh=00_AfAbz0vRFjjJfGBmosIKY3OAl0myGmc0y-uwyVnOPwMhaw&oe=64ACDDC0&_nc_sid=10d13b",
          "width"=>640}],
       "is_verified"=>true,
       "biography"=>"",
       "biography_with_entities"=>nil,
       "follower_count"=>2364927,
       "profile_context_facepile_users"=>nil,
       "bio_links"=>[{"url"=>""}],
       "pk"=>"314216",
       "full_name"=>"Mark Zuckerberg",
       "id"=>nil}}},
 "extensions"=>{"is_final"=>true}}
 ```

</details>

### 2. Get User Id By Username

<details>
<summary>Output</summary>

```ruby
> api_client.get_user_id_from_username('zuck')
"314216"
```

</details>

### 3. Get User Threads

<details>
<summary>Output</summary>

```ruby
> api_client.get_user_threads('zuck')

{"data"=>
  {"mediaData"=>
    {"threads"=>
      [{"thread_items"=>
         [{"post"=>
            {"user"=>
              {"profile_pic_url"=>
                "https://scontent.cdninstagram.com/v/t51.2885-19/357376107_1330597350674698_8884059223384672080_n.jpg?stp=dst-jpg_s150x150&_nc_ht=scontent.cdninstagram.com&_nc_cat=1&_nc_ohc=euIj8dtTGIkAX87Zep8&edm=APs17CUBAAAA&ccb=7-5&oh=00_AfDmmnuBZoXbnUNa9APCZ-3U6VQ2qn76xPb41bsMY-iAIw&oe=64AED800&_nc_sid=10d13b",
               "username"=>"zuck",
               "id"=>nil,
               "is_verified"=>true,
               "pk"=>"314216"},
             "image_versions2"=>{"candidates"=>[]},
             "original_width"=>612,
             "original_height"=>612,
             "video_versions"=>[],
             "carousel_media"=>nil,
             "carousel_media_count"=>nil,
             "pk"=>"3141737961795561608",
             "has_audio"=>nil,
             "text_post_app_info"=>{"link_preview_attachment"=>nil, "share_info"=>{"quoted_post"=>nil, "reposted_post"=>nil}, "reply_to_author"=>nil, "is_post_unavailable"=>false},
             "caption"=>{"text"=>"70 million sign ups on Threads as of this morning. Way beyond our expectations."},
             "taken_at"=>1688744372,
             "like_count"=>282679,
             "code"=>"CuZsgfWLyiI",
             "media_overlay_info"=>nil,
             "id"=>"3141737961795561608_314216"},
           "line_type"=>"line",
           "view_replies_cta_string"=>"48,339 replies",
           "reply_facepile_users"=>
            [{"__typename"=>"XDTUserDict",
              "id"=>nil,
              "profile_pic_url"=>
               "https://scontent.cdninstagram.com/v/t51.2885-19/358513921_6416528448425257_6355253864424516894_n.jpg?stp=dst-jpg_s150x150&_nc_ht=scontent.cdninstagram.com&_nc_cat=101&_nc_ohc=aJCNmpvDZ1oAX9HpiOp&edm=APs17CUBAAAA&ccb=7-5&oh=00_AfC8DhQjcXXFtYnA9VaCPQd-P8pjvajr0WVDG6KthwhPPw&oe=64ADACED&_nc_sid=10d13b"},
             {"__typename"=>"XDTUserDict",
              "id"=>nil,
              "profile_pic_url"=>
               "https://scontent.cdninstagram.com/v/t51.2885-19/358363725_296549396179392_7343082343551906701_n.jpg?stp=dst-jpg_s150x150&_nc_ht=scontent.cdninstagram.com&_nc_cat=100&_nc_ohc=jiuCVH1j7roAX9AFm-u&edm=APs17CUBAAAA&ccb=7-5&oh=00_AfDTJnTZL7r6EojPC8bxHZ0JqaDFWzyBAoP3i2lkwNtnHg&oe=64AEFADE&_nc_sid=10d13b"},
             {"__typename"=>"XDTUserDict",
              "id"=>nil,
              "profile_pic_url"=>
               "https://scontent.cdninstagram.com/v/t51.2885-19/358022990_1634211307073764_8713540702339724694_n.jpg?stp=dst-jpg_s150x150&_nc_ht=scontent.cdninstagram.com&_nc_cat=104&_nc_ohc=ojsCZCto2AYAX_orFic&edm=APs17CUBAAAA&ccb=7-5&oh=00_AfD5UaJs0hi18wo5gnv3e-IVOj04d3Sj8VNcv-yIS_PNWA&oe=64AE1271&_nc_sid=10d13b"}],
           "should_show_replies_cta"=>true,
           "__typename"=>"XDTThreadItem"}],
        "id"=>"3141737961795561608"},
        ...
       ]}},
 "extensions"=>{"is_final"=>true}}
 ```

</details>

### 4. Get User Replies

<details>
<summary>Output</summary>

```ruby
> api_client.get_user_replies('zuck')

{"data"=>
  {"mediaData"=>
    {"threads"=>
      [
        {"thread_items"=>
          [{"post"=>
            {"user"=>
              {"profile_pic_url"=>
                "https://scontent.cdninstagram.com/v/t51.2885-19/358026861_141392842306420_559564373199925837_n.jpg?stp=dst-jpg_s150x150&_nc_ht=scontent.cdninstagram.com&_nc_cat=1&_nc_ohc=4Y51WueIC5cAX-nxt80&edm=APs17CUBAAAA&ccb=7-5&oh=00_AfBqdJwJioVBYD8K2fGIV-wkJTrFbqTAO79IjJ0WwVZAxA&oe=64AE5103&_nc_sid=10d13b",
                "username"=>"wendys",
                "id"=>nil,
                "is_verified"=>true,
                "pk"=>"20703145"},
              "image_versions2"=>{"candidates"=>[]},
              "original_width"=>612,
              "original_height"=>612,
              "video_versions"=>[],
              "carousel_media"=>nil,
              "carousel_media_count"=>nil,
              "pk"=>"3142064553088621878",
              "has_audio"=>nil,
              "text_post_app_info"=>{"link_preview_attachment"=>nil, "share_info"=>{"quoted_post"=>nil, "reposted_post"=>nil}, "reply_to_author"=>nil, "is_post_unavailable"=>false},
              "caption"=>{"text"=>"hey @zuck, you should go to space just to really make him mad lol"},
              "taken_at"=>1688783304,
              "like_count"=>38234,
              "code"=>"Cua2xBMMZ02",
              "media_overlay_info"=>nil,
              "id"=>"3142064553088621878_20703145"},
            "line_type"=>"squiggle",
            "view_replies_cta_string"=>"1,850 replies",
            "reply_facepile_users"=>
            [{"__typename"=>"XDTUserDict",
              "id"=>nil,
              "profile_pic_url"=>
                "https://scontent.cdninstagram.com/v/t51.2885-19/358162136_987804195574156_3542536942155213815_n.jpg?stp=dst-jpg_s150x150&_nc_ht=scontent.cdninstagram.com&_nc_cat=104&_nc_ohc=5HOAV2fq5uoAX_HR73u&edm=APs17CUBAAAA&ccb=7-5&oh=00_AfDVkZ-6Fl9rhmTitz1b535lmyJAxz4_w8-rWrMXqYNavQ&oe=64AE1E61&_nc_sid=10d13b"},
              {"__typename"=>"XDTUserDict",
              "id"=>nil,
              "profile_pic_url"=>
                "https://scontent.cdninstagram.com/v/t51.2885-19/358616731_1007336537068291_6804357878321452682_n.jpg?stp=dst-jpg_s150x150&_nc_ht=scontent.cdninstagram.com&_nc_cat=107&_nc_ohc=jOVsnRkg7QkAX-kdHoe&edm=APs17CUBAAAA&ccb=7-5&oh=00_AfCHYQ5RUl0xQ9gO6yYXKE8OBqtvbfoErxPLDgkIEVx-Xw&oe=64AF1FAF&_nc_sid=10d13b"},
              {"__typename"=>"XDTUserDict",
              "id"=>nil,
              "profile_pic_url"=>
                "https://scontent.cdninstagram.com/v/t51.2885-19/358004058_224696659963782_7639867694020938744_n.jpg?stp=dst-jpg_s150x150&_nc_ht=scontent.cdninstagram.com&_nc_cat=106&_nc_ohc=QNbS2_UKRqsAX_eAg83&edm=APs17CUBAAAA&ccb=7-5&oh=00_AfDkRnFiwiQEHkUc3z9cexUp_rU2EyVb2B9vSFINiX9jHw&oe=64AE3188&_nc_sid=10d13b"}],
            "should_show_replies_cta"=>true,
            "__typename"=>"XDTThreadItem"},
          {"post"=>
            {"user"=>
              {"profile_pic_url"=>
                "https://scontent.cdninstagram.com/v/t51.2885-19/357376107_1330597350674698_8884059223384672080_n.jpg?stp=dst-jpg_s150x150&_nc_ht=scontent.cdninstagram.com&_nc_cat=1&_nc_ohc=euIj8dtTGIkAX-GEya1&edm=APs17CUBAAAA&ccb=7-5&oh=00_AfDR8rZOGAg2V11MJ7fp30NdxqO8uTpGO-GeICMjOIo09g&oe=64AED800&_nc_sid=10d13b",
                "username"=>"zuck",
                "id"=>nil,
                "is_verified"=>true,
                "pk"=>"314216"},
              "image_versions2"=>{"candidates"=>[]},
              "original_width"=>612,
              "original_height"=>612,
              "video_versions"=>[],
              "carousel_media"=>nil,
              "carousel_media_count"=>nil,
              "pk"=>"3142401519797455676",
              "has_audio"=>nil,
              "text_post_app_info"=>{"link_preview_attachment"=>nil, "share_info"=>{"quoted_post"=>nil, "reposted_post"=>nil}, "reply_to_author"=>{"username"=>"wendys", "id"=>nil}, "is_post_unavailable"=>false},
              "caption"=>{"text"=>"😂"},
              "taken_at"=>1688823474,
              "like_count"=>5581,
              "code"=>"CucDYh5LMs8",
              "media_overlay_info"=>nil,
              "id"=>"3142401519797455676_314216"},
            "line_type"=>"line",
            "view_replies_cta_string"=>"626 replies",
            "reply_facepile_users"=>
            [{"__typename"=>"XDTUserDict",
              "id"=>nil,
              "profile_pic_url"=>
                "https://scontent.cdninstagram.com/v/t51.2885-19/358211656_1007740963881114_4220238417351912171_n.jpg?stp=dst-jpg_s150x150&_nc_ht=scontent.cdninstagram.com&_nc_cat=106&_nc_ohc=O5sNOEMKVLoAX8wShGW&edm=APs17CUBAAAA&ccb=7-5&oh=00_AfD0ipuSA-SadMEUXHmEGgT9kY2zKOQYDeViblet4MNRvQ&oe=64AEC73F&_nc_sid=10d13b"},
              {"__typename"=>"XDTUserDict",
              "id"=>nil,
              "profile_pic_url"=>
                "https://scontent.cdninstagram.com/v/t51.2885-19/358011265_1054138002663642_2993723653532124818_n.jpg?stp=dst-jpg_s150x150&_nc_ht=scontent.cdninstagram.com&_nc_cat=106&_nc_ohc=GH7LaLFiy_QAX9Tqihj&edm=APs17CUBAAAA&ccb=7-5&oh=00_AfAbAfAek6KWVgfWCWkA4C4kg8P2YqDlZO9WoUv2TR164g&oe=64AE6EE6&_nc_sid=10d13b"},
              {"__typename"=>"XDTUserDict",
              "id"=>nil,
              "profile_pic_url"=>
                "https://scontent.cdninstagram.com/v/t51.2885-19/357926873_1298324974109541_2037425352328602591_n.jpg?stp=dst-jpg_s150x150&_nc_ht=scontent.cdninstagram.com&_nc_cat=109&_nc_ohc=NGwrtjpVjFYAX9c9KvC&edm=APs17CUBAAAA&ccb=7-5&oh=00_AfDpcvJw8gJaloJQi74suJiGiBYwoGzNcgk-FI4oOJzmoQ&oe=64AD9E5E&_nc_sid=10d13b"}],
            "should_show_replies_cta"=>true,
            "__typename"=>"XDTThreadItem"}],
        "id"=>"3142401519797455676"}
      ]
    }
  }
}
```

</details>

### 5. Get Post By post_id

<details>
<summary>Output</summary>

```ruby

> api_client.get_post(3141737961795561608)

{"data"=>
  {"data"=>
    {"containing_thread"=>
      {"thread_items"=>
        [{"post"=>
           {"user"=>
             {"profile_pic_url"=>
               "https://scontent.cdninstagram.com/v/t51.2885-19/357376107_1330597350674698_8884059223384672080_n.jpg?stp=dst-jpg_s150x150&_nc_ht=scontent.cdninstagram.com&_nc_cat=1&_nc_ohc=euIj8dtTGIkAX-MgmQE&edm=APs17CUBAAAA&ccb=7-5&oh=00_AfDt3lLSfLTgwxWZfB-Oa9hp-8vMK0QJtw3besWFvvTTsw&oe=64AED800&_nc_sid=10d13b",
              "username"=>"zuck",
              "id"=>nil,
              "is_verified"=>true,
              "pk"=>"314216"},
            "image_versions2"=>{"candidates"=>[]},
            "original_width"=>612,
            "original_height"=>612,
            "video_versions"=>[],
            "carousel_media"=>nil,
            "carousel_media_count"=>nil,
            "pk"=>"3141737961795561608",
            "has_audio"=>nil,
            "text_post_app_info"=>
             {"link_preview_attachment"=>nil, "share_info"=>{"quoted_post"=>nil, "reposted_post"=>nil}, "reply_to_author"=>nil, "is_post_unavailable"=>false, "direct_reply_count"=>48460},
            "caption"=>{"text"=>"70 million sign ups on Threads as of this morning. Way beyond our expectations."},
            "taken_at"=>1688744372,
            "like_count"=>283459,
            "code"=>"CuZsgfWLyiI",
            "media_overlay_info"=>nil,
            "id"=>"3141737961795561608_314216"},
          "line_type"=>"none",
          "view_replies_cta_string"=>"48,460 replies",
          "reply_facepile_users"=>[],
          "should_show_replies_cta"=>true}],
       "thread_type"=>"thread",
       "header"=>nil,
       "id"=>"3141737961795561608"},
     "reply_threads"=>
      [{"thread_items"=>
         [{"post"=>
            {"user"=>
              {"profile_pic_url"=>
                "https://scontent.cdninstagram.com/v/t51.2885-19/358018958_1397198330848913_2174407606956633289_n.jpg?_nc_ht=scontent.cdninstagram.com&_nc_cat=105&_nc_ohc=NGp-EN7eh0AAX_xwDKg&edm=APs17CUBAAAA&ccb=7-5&oh=00_AfDrtqD3FvYxy8D4hNxDoDFbx1tS7QxTyz1VELDAK2eAJg&oe=64AE3BD8&_nc_sid=10d13b",
               "username"=>"caryn650",
               "id"=>nil,
               "is_verified"=>true,
               "pk"=>"299561242"},
             "image_versions2"=>{"candidates"=>[]},
             "original_width"=>612,
             "original_height"=>612,
             "video_versions"=>[],
             "carousel_media"=>nil,
             "carousel_media_count"=>nil,
             "pk"=>"3142323068814786693",
             "has_audio"=>nil,
             "text_post_app_info"=>
              {"link_preview_attachment"=>nil, "share_info"=>{"quoted_post"=>nil, "reposted_post"=>nil}, "reply_to_author"=>{"username"=>"zuck", "id"=>nil}, "is_post_unavailable"=>false},
             "caption"=>{"text"=>"Amazing"},
             "taken_at"=>1688814122,
             "like_count"=>21,
             "code"=>"Cubxi6uOICF",
             "media_overlay_info"=>nil,
             "id"=>"3142323068814786693_299561242"},
           "line_type"=>"line",
           "view_replies_cta_string"=>"1 reply",
           "reply_facepile_users"=>[],
           "should_show_replies_cta"=>false},
           ...
          ],
        "thread_type"=>"thread",
        "header"=>nil,
        "id"=>"3141741115653144028"}]}},
 "extensions"=>{"is_final"=>true}}
```

</details>

## TODO

- Pagination Support
- Rspec
- Add More Methods

## Contributors

Please feel free to contribute by making a Pull Request!
