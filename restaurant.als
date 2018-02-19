module restaurant

one sig Kitchen {
    fulfills: some Order
}
sig MenuItem {
    costs: one Cost
}

sig Cost {
    
}
sig Table {
    orders: one Order
}
sig Customer {
    sits: one Table
}
sig Order {
    contains: some MenuItem
}

sig Waiter {
    waits: one Table
}

// all orders are associated with one table
fact {
    all o: Order | one t: Table | t.orders = o
}


// tables cannot have more than one waiter
fact {
    all t:Table | one w:Waiter|w.waits=t
}
