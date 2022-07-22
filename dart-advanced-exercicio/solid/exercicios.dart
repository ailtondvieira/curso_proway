class Cart {
  getCart() {}
}

class CartRepository {
  remove(int idCart) {}
  save(Cart cart) {}
}

class Order {
  getDetails(Order order) {}
}

class OrderRepository {
  insert(Order order) {}
  delete(Order order) {}
  update(Order order) {}
  select(Order order) {}
}
