user1 = User.create(twitter_id: 12345, profile_image: "https://pbs.twimg.com/profile_images/556149932168474624/y64DFpRP_400x400.jpeg", screenname:"chrisrbohl")
user2 = User.create
charity1 = Charity.create(name: "The Human Fund", summary: "Money for People")
tree1 = Tree.create(donation_amount: 10)
charity1.trees << tree1
donation1 = Donation.create()
user1.donations << donation1
tree1.donations << donation1
prop1 = Proposition.create
user1.made_propositions << prop1
tree1.propositions << prop1
prop1.proposed = user2