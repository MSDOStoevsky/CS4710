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
	orders: Order
}
sig Customer {
	belongs: one Party
}
sig Order {
	has: MenuItem
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
	//TODO
}

// all parties have customers
fact {
	//TODO
}

pred test { }

run test for 5

/* 
	multiple tables cannot have the same order 
	customers can only be seated at one table
*/
