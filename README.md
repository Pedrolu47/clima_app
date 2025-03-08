# 🌤 Clima App

Una aplicación de Flutter que muestra información meteorológica en tiempo real utilizando la API de OpenWeatherMap.

## 🚀 Características
- Consulta el clima actual de cualquier ciudad.
- Muestra la temperatura, descripción del clima y humedad.
- Diseño sencillo con Flutter.

## 📦 Instalación y Configuración

### 1️⃣ Clona el repositorio
```bash
git clone https://github.com/Pedrolu47/clima_app.git
cd clima_app
```

### 2️⃣ Instala las dependencias
```bash
flutter pub get
```

### 3️⃣ Configura la API Key
1. Crea una cuenta en [OpenWeatherMap](https://openweathermap.org).
2. Genera una API Key gratuita.
3. En el archivo `weather.dart`, reemplaza `'YOUR_API_KEY'` con tu clave real.

```dart
final String apiKey = 'YOUR_API_KEY'; // 🔹 Reemplaza con tu API Key
```

### 4️⃣ Ejecuta la aplicación
```bash
flutter run
```

## 📂 Estructura del Proyecto
```
clima_app/
│── lib/
│   ├── main.dart           # Archivo principal con la interfaz de usuario
│   ├── weather.dart        # Lógica para obtener los datos del clima
│── pubspec.yaml            # Dependencias del proyecto
│── README.md               # Documentación del proyecto
│── assets/                 # (Si usaste imágenes o íconos)
│── android/                # Configuración para Android
│── ios/                    # Configuración para iOS
│── web/                    # Configuración para Web
│── .gitignore              # Ignorar archivos innecesarios en GitHub
```

## 🛠 Tecnologías Utilizadas
- **Flutter** (Framework para UI)
- **Dart** (Lenguaje de programación)
- **HTTP** (Para hacer solicitudes a la API)

## 📸 Capturas de Pantalla
_Agrega aquí capturas de la app en funcionamiento._

## 📌 Autor
Desarrollado por [Pedrolu47](https://github.com/Pedrolu47).

---
✅ **¡Listo! Ahora tienes una documentación clara y completa para tu portafolio. 🚀**

