# README

Structure of DataBase

## User
### association
```
has_many : rooms
has_many : reservations
has_many : messages
has_many : photos
has_many : favarites
has_many : reviews
```
### column
- name
- email
- password
- avatar
- profile

## Room
### association
```
belongs_to : user
has_many : reservations
has_many : reviews
has_many : photos
has_many : favarites
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

## Photo
### association
```
belongs_to : user
belongs_to : room
has_many : favarites
```
### column
- name

## Favarite
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
