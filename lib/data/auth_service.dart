class AuthService {
  final Map<String, Map<String, String>> usuarios = {
    'jose@gmail.com': {
      'password': '123456',
      'nombre': 'Jose David',
      'rol': 'Administrador',
    },
    'maria@gmail.com': {
      'password': '654321',
      'nombre': 'Maria Lopez',
      'rol': 'Estudiante',
    },
    'carlos@gmail.com': {
      'password': '987654',
      'nombre': 'Carlos Perez',
      'rol': 'Docente',
    },
  };

  Map<String, String>? login(String correo, String password) {
    if (usuarios.containsKey(correo)) {
      final usuario = usuarios[correo]!;

      if (usuario['password'] == password) {
        return {
          'correo': correo,
          'nombre': usuario['nombre']!,
          'rol': usuario['rol']!,
        };
      }
    }

    return null;
  }
}