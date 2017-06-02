Message.destroy_all
User.destroy_all
Chatroom.destroy_all

chatrooms = [
	{title: "The Scratching Post", description:"Sharpen your claws here!"},
	{title: "The Yarn Barn", description:"Like a big feline playground."},
	{title: "The Water Dish", description:"Healthy Living for Cool Cats"},
	{title: "Dogs Anonymous", description:"...woof?"},
	{title: "The Litter Box", description:"For shitposting."}
]

users = [
	{
		first_name: "Will",
		last_name: "Kaspar",
		username: "ChatCat" ,
		email: "w@k.com",
		password: "123456",
		biography: "The big cat around these parts.",
	},
	{
		first_name: "Yan Yin",
		last_name: "Choy",
		username: "StarCat",
		email: "y@c.com",
		password: "123456",
		biography: "I'm a star-cat unicorn."
	},
	{
		first_name: "Thelma",
		last_name: "Boamah",
		username: "Thelma",
		email: "t@b.com",
		password: "123456",
		biography: "I'm more of a goldfish."
	},
	{
		first_name: "John",
		last_name: "Slater",
		username: "CoolCat",
		email: "j@s.com",
		password: "123456",
		biography: "I'm a kitten."
	},
	{
		first_name: "Tony",
		last_name: "Urso",
		username: "BearCat",
		email: "c@w.com",
		password: "123456",
		biography: "I'm a bearcat."
	}
]

User.create(users)
Chatroom.create(chatrooms)
