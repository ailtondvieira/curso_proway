//Utilizado para fazer diversas verificações

void main() {
  String hero = 'Invoker';
  String? status = '';

  switch (hero) {
    case 'Void':
      status = 'Agility';
      break;

    case 'Lion':
      status = 'Inteligence';
      break;

    case 'Invoker':
      status = 'Inteligence';
      break;

    case 'Axe':
      status = 'Strength';
      break;

    default:
      status = 'Unknow';
  }

  print('Your hero ir $hero and the main status is $status!');
}
