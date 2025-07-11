# 🚀 INSTRUCCIONES PARA ANDROID STUDIO

## 📱 Cómo crear tu APK de YouTube Blocker

### Paso 1: Abrir el proyecto en Android Studio
1. **Abre Android Studio** en tu computadora
2. En la pantalla de inicio, haz clic en **"Open an existing Android Studio project"**
3. **Navega hasta esta carpeta** y selecciona la carpeta **"android"** (dentro de YouTubeBlocker)
4. Haz clic en **"OK"**

### Paso 2: Esperar sincronización
1. Android Studio **sincronizará el proyecto automáticamente**
2. **Espera a que termine** (puede tomar 2-5 minutos la primera vez)
3. Si aparecen mensajes sobre **instalar SDK o herramientas**, haz clic en **"Install"** o **"Accept"**

### Paso 3: Construir la APK
1. En el menú superior, ve a **"Build"** → **"Build Bundle(s) / APK(s)"** → **"Build APK(s)"**
2. **Espera a que termine** la construcción (1-3 minutos)
3. Cuando termine, aparecerá un mensaje **"APK(s) generated successfully"**
4. Haz clic en **"locate"** para encontrar tu APK

### Paso 4: Ubicación de tu APK
Tu APK estará en:
```
YouTubeBlocker/android/app/build/outputs/apk/debug/app-debug.apk
```

### Paso 5: Instalar en tu TV Box
1. **Copia** el archivo `app-debug.apk` a una **memoria USB**
2. **Conecta la USB** a tu TV Box
3. En tu TV Box, ve a **Configuración** → **Seguridad** → Activa **"Fuentes desconocidas"**
4. Usa un **explorador de archivos** para encontrar y **instalar la APK**

## 🔧 Si tienes problemas:

### Error de SDK:
- Acepta instalar cualquier SDK que Android Studio sugiera
- Ve a **File** → **Sync Project with Gradle Files**

### Error de Java:
- Asegúrate de tener **Java 11 o superior** instalado

### Error de construcción:
- Ve a **Build** → **Clean Project**
- Luego **Build** → **Rebuild Project**

## 🎯 Resultado final:
Tendrás una APK funcional llamada **"YouTube Blocker"** lista para instalar en tu TV Box.

### Características de tu APK:
- ✅ Bloquea YouTube, m.youtube.com, youtu.be
- ✅ Interfaz optimizada para TV Box
- ✅ Botón grande para activar/desactivar
- ✅ Contador de intentos bloqueados
- ✅ Diseño moderno negro y blanco

## 📞 ¿Necesitas ayuda?
Si tienes problemas, verifica que:
1. Android Studio esté actualizado
2. Tengas conexión a internet (para descargar dependencias)
3. Tu computadora tenga al menos 4GB de RAM libre
4. Hayas abierto la carpeta "android" (no la carpeta principal)

¡Tu aplicación YouTube Blocker estará lista en unos minutos! 🎉
