module restaurant

one sig Kitchen {
	fulfills: Order
}
sig MenuItem {
	
}
one sig Menu {
	has: MenuItem
}
sig Party {
	sits: one Table
}
sig Table {
	orders: one Order
}
sig Customer {
	belongs: one Party
}
sig Order {
	contains: MenuItem
}

sig Waiter {
	waits: one Table,
	takes: one Order
}

// all menu items belong to one menu
fact {
	all m_item: MenuItem, m: Menu | m.has = m_item
}

// only one party per table
fact {
	 all t: Table | one p: Party | p.sits = t
}

// all parties have customers
fact {
	//TODO
}

// tables cannot have more than one waiter
fact {
	//TODO 
}

// waiters only take orders of tables they wait on
fact {
	//TODO 
}

pred test { }

run test for 5
