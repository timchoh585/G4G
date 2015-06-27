user1 = User.create
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