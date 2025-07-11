#!/bin/bash

echo "🚀 Construyendo YouTube Blocker APK..."

# Crear directorio de construcción
mkdir -p build-apk
cd build-apk

# Copiar archivos web exportados
echo "📁 Copiando archivos web..."
cp -r ../out/* .

# Crear estructura básica de APK
echo "📦 Creando estructura de APK..."
mkdir -p META-INF
mkdir -p assets
mkdir -p res/values

# Copiar archivos web a assets
cp -r ../out/* assets/

# Crear archivo strings.xml
cat > res/values/strings.xml << 'EOF'
<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="app_name">YouTube Blocker</string>
    <string name="app_description">Bloquea YouTube en TV Box</string>
</resources>
EOF

# Crear AndroidManifest.xml
cp ../android-manifest.xml AndroidManifest.xml

# Crear archivo de información
cat > APK-INFO.txt << 'EOF'
YouTube Blocker APK
==================

Aplicación: YouTube Blocker
Versión: 1.0
Package: com.tvbox.youtubeblocker
Propósito: Bloquear YouTube en TV Box Android

INSTALACIÓN:
1. Transfiere este archivo a tu TV Box
2. Activa "Fuentes desconocidas" en Configuración > Seguridad
3. Instala usando un explorador de archivos
4. Abre la aplicación y activa el bloqueo

CARACTERÍSTICAS:
- Bloqueo de youtube.com, m.youtube.com, youtu.be
- Interfaz optimizada para TV
- Control parental
- Monitoreo en tiempo real
- Fácil activación/desactivación

COMPATIBILIDAD:
- Android 5.0+ (API 21)
- TV Box Android
- Tablets Android
- Smartphones Android

NOTA: Esta es una versión de demostración. Para una APK completa
se requiere Android Studio y el SDK de Android.
EOF

echo "✅ Estructura de APK creada en build-apk/"
echo "📱 Archivos listos para empaquetado"
echo ""
echo "Para crear una APK real necesitas:"
echo "1. Android Studio instalado"
echo "2. Android SDK configurado"
echo "3. Ejecutar: cd android && ./gradlew assembleDebug"
echo ""
echo "Los archivos están listos en: build-apk/"

cd ..
