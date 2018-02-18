module restaurant

one sig Restaurant {
	seats:   Customer -> Table
}
one sig Kitchen {
	fulfills: Order
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
sig Order {}

sig Waiter {
	waits: one Table,
	takes: one Order
}

fact {
//	all w: Waiter | 
}

pred new_customer [r, r': Restaurant, c: Customer, t: Table] {
   r'.seats = r.seats + c->t
}

run new_customer for 5

/* 
	multiple tables cannot have the same order 
	customers can only be seated at one table
*/
