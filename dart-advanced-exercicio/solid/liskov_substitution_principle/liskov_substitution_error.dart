void main() {
  MusicPlay musicPlay = MusicPlay();
  Mp3MusicPlay mp3musicPlay = Mp3MusicPlay();

  musicPlay.play('mp3');
  mp3musicPlay.play('mp4');
}

// Lançando uma exceção inesperada...
class MusicPlay {
  void play(fileExtension) {
    // toca a música
  }
}

class Mp3MusicPlay extends MusicPlay {
  void play(fileExtension) {
   
  }
}

// Retornando valores de tipos diferentes...
class Auth {
  dynamic checkCredentials(String login, String password) {
    // faz alguma coisa
    return true;
  }
}

class AuthApi extends Auth {
  dynamic checkCredentials(login, password) {
    // faz alguma coisa
    return {'auth': true, 'status': 200};
  }
}
