part of 'cart_bloc.dart';

@immutable
abstract class CartEvent extends Equatable {
  const CartEvent();
}

class CartStarted extends CartEvent {
  @override
  List<Object> get props => [];
}

class CartItemAdded extends CartEvent {
  const CartItemAdded(this.item);

  final ServicePackage item;

  @override
  List<Object> get props => [item];
}

class CartItemRemoved extends CartEvent {
  const CartItemRemoved(this.item);

  final ServicePackage item;

  @override
  List<Object> get props => [item];
}

class CartCleared extends CartEvent {
  @override
  List<Object> get props => [];
}