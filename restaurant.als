
sig Table {

}
sig Customer {}
sig Order {}
sig Waiter {}

one sig Restaurant {
	seats:   Customer -> Table,
	waiters:   Waiter -> Table,
	orders: Order -> Table
}

pred new_customer [r, r': Restaurant, c: Customer, t: Table] {
   r'.seats = r.seats + c->t
}

run new_customer
