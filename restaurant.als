
sig Tables {}
sig Customers {}
sig Order {}

sig Restaurant {
	seats:   Customers -> Tables
	
	orders: Order -> Tables
}
