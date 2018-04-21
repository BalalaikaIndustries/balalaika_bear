![](http://i.imgur.com/Sdc5a5O.png)
# BalalaikaBear
[![Build Status](https://semaphoreci.com/api/v1/ayrat555/balalaika_bear/branches/master/badge.svg)](https://semaphoreci.com/ayrat555/balalaika_bear)

BalalaikaBear - simple elixir wrapper for VK API

## Installation

Add `balalaika_bear` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:balalaika_bear, "~> 0.1.2"}]
end
```
## Usage

All VK api method groups have corresponding modules. For example, Users method group corresponds to BalalaikaBear.Users module. All api methods take map with params and return tuple with {:ok, result} or {:error, result}, result is also map. Method names are snakecased.

Examples:

```elixir
iex> BalalaikaBear.Users.get(%{user_ids: [13886710], fields: ["photo_max", "sex"], name_case: "ins"}) 
{:ok,
 [%{"first_name" => "Айратом", "hidden" => 1,
    "last_name" => "Бадыковым",
    "photo_max" => "https://pp.vk.me/c837131/v837131710/1240d/roPlCfnhZf4.jpg",
    "sex" => 2, "uid" => 13886710}]}

iex> BalalaikaBear.Friends.get_recent(%{access_token: "0632e6d2eda02e4a891da1ddcec99ff333804cce64f4a156a1a988f2c5696ee299209f2179e33038c8447"})
{:ok,
 [85795727, 397515497, 1853478, 17040466, 60572844, 102237877, 311351751,
  24024015, 7425266, 37130508, 33338345, 90365581, 10848035, 19841812, 19295783, 
  40546021, 97004807, 16633457, 684522, 95240582, 37732872, 28975723, 31308630,
  16607929, 24965682, 46861948, 273283791, 15733285, 51835166, 250923080,
  14563583, 251266422, 43352802, 196192600, 89721960, 278044518, 38296606,
  8225855, 30534493, 37613006, 12958248, 92178223, 43750368, 53755118, 10507005, 
  3969963, 74360103, 20342602, 8854979, ...]}

iex> BalalaikaBear.Apps.get(%{app_id: 5803246})
{:ok,
 %{"author_id" => 13886710, "author_url" => "https://vk.com/id13886710",
   "banner_186" => "https://vk.com/images/dquestion_x.gif",
   "banner_896" => "https://vk.com/images/dquestion_v.png",
   "icon_100" => "https://vk.com/images/dquestion_100.gif",
   "icon_128" => "https://vk.com/images/dquestion_i.png",
   "icon_200" => "https://vk.com/images/dquestion_a.png",
   "icon_25" => "https://vk.com/images/dquestion_e.gif",
   "icon_256" => "https://vk.com/images/dquestion_f.png",
   "icon_50" => "https://vk.com/images/dquestion_c.gif",
   "icon_75" => "https://vk.com/images/dquestion_d.png", "id" => 5803246,
   "is_in_catalog" => 0, "leaderboard_type" => 0, "members_count" => 1,
   "title" => "test_elixir", "type" => "standalone"}}

```
More examples can be found in test files.

## Available api modules

* BalalaikaBear.Account
* BalalaikaBear.Apps
* BalalaikaBear.Audio
* BalalaikaBear.Auth
* BalalaikaBear.Board
* BalalaikaBear.Database
* BalalaikaBear.Docs
* BalalaikaBear.Fave
* BalalaikaBear.Friends
* BalalaikaBear.Gifts
* BalalaikaBear.Groups
* BalalaikaBear.Leads
* BalalaikaBear.Likes
* BalalaikaBear.Market
* BalalaikaBear.Messages
* BalalaikaBear.Newsfeed
* BalalaikaBear.Notes
* BalalaikaBear.Notifications
* BalalaikaBear.Orders
* BalalaikaBear.Pages
* BalalaikaBear.Photos
* BalalaikaBear.Places
* BalalaikaBear.Polls
* BalalaikaBear.Search
* BalalaikaBear.Secure
* BalalaikaBear.Stats
* BalalaikaBear.Status
* BalalaikaBear.Storage
* BalalaikaBear.Users
* BalalaikaBear.Utils
* BalalaikaBear.Video
* BalalaikaBear.Wall
* BalalaikaBear.Widgets

Documentation for available methods can be found [here](https://vk.com/dev/methods)(russian) or [here](https://vk.com/pages?oid=-17680044&p=API_Method_Description)(english)

## Available api methods

https://hexdocs.pm/balalaika_bear/api-reference.html

## Contributing

Start by forking this repo

Pull requests are greatly appreciated
