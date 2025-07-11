#!/bin/bash

echo "🔨 Construyendo APK de YouTube Blocker..."
echo ""

# Verificar que estamos en el directorio correcto
if [ ! -d "android" ]; then
    echo "❌ Error: No se encuentra la carpeta 'android'"
    echo "   Asegúrate de ejecutar este script desde la carpeta YouTubeBlocker"
    exit 1
fi

echo "📁 Entrando al directorio android..."
cd android

echo "🔧 Construyendo APK..."
./gradlew assembleDebug

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ ¡APK creada exitosamente!"
    echo ""
    echo "📱 Tu APK está en:"
    echo "   android/app/build/outputs/apk/debug/app-debug.apk"
    echo ""
    echo "📋 Próximos pasos:"
    echo "1. Copia app-debug.apk a una USB"
    echo "2. Conecta la USB a tu TV Box"
    echo "3. Activa 'Fuentes desconocidas' en Configuración > Seguridad"
    echo "4. Instala la APK usando un explorador de archivos"
    echo ""
    echo "🎉 ¡Tu YouTube Blocker estará listo para usar!"
else
    echo ""
    echo "❌ Error al construir la APK"
    echo "   Intenta abrir el proyecto en Android Studio y construir desde ahí"
fi
