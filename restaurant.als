
sig Table {}
sig Customer {}
sig Order {}

sig Restaurant {
	seats:   Customer -> Tables,
	
	orders: Order -> Tables
}

pred new_customer [r, r': Restaurant, c: Customer, t: Table] {
   r'.addr = r.addr + c->t
}
