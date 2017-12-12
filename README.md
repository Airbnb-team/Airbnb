# README

Structure of DataBase

## User
### association
```
has_many : rooms
has_many : reservations
has_many : messages
has_many : photos
has_many : favorites
has_many : reviews
has_many : groups, through: :user_groups
has_many : user_groups
```
### column
- name
- email
- password
- avatar
- profile
- group_id

## Room
### association
```
belongs_to : user
has_many : reservations
has_many : reviews
has_many : photos
has_many : favorites
```
### column
- name

## Reservation
### association
```
belongs_to : user
belongs_to : room
```
### column
- name

## Message
### association
```
belongs_to : user
```
### column
- name
- group_id
- image

## Photo
### association
```
belongs_to : user
belongs_to : room
has_many : favorites
```
### column
- name

## Favorite
### association
```
belongs_to : user
belongs_to : room
belongs_to : Photo
```
### column
- name

## Review
### association
```
belongs_to : user
belongs_to : room
```
### column
- name

## Group
### association
```
has_many : messages
has_many : users, through: :user_groups
has_many : user_groups
```
### column
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|message_id|integer|null: false, foreign_key: true|

## user_group
### association
```
belongs_to : user
belongs_to : group
```
### column
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|
