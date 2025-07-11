#!/bin/bash

echo "📦 Creando proyecto completo para Android Studio..."

# Crear directorio del proyecto
PROJECT_NAME="YouTubeBlocker"
mkdir -p $PROJECT_NAME

# Copiar todos los archivos necesarios
echo "📁 Copiando archivos del proyecto..."
cp -r android $PROJECT_NAME/
cp -r src $PROJECT_NAME/
cp -r out $PROJECT_NAME/
cp -r public $PROJECT_NAME/
cp -r node_modules $PROJECT_NAME/ 2>/dev/null || echo "⚠️  node_modules no copiado (muy grande)"
cp package.json $PROJECT_NAME/
cp package-lock.json $PROJECT_NAME/
cp next.config.ts $PROJECT_NAME/
cp capacitor.config.ts $PROJECT_NAME/
cp tsconfig.json $PROJECT_NAME/
cp README-APK-COMPLETO.md $PROJECT_NAME/
cp INSTRUCCIONES_APK.md $PROJECT_NAME/

# Crear archivo de instrucciones específicas
cat > $PROJECT_NAME/COMO-ABRIR-EN-ANDROID-STUDIO.md << 'EOF'
# 🚀 Cómo abrir este proyecto en Android Studio

## Paso 1: Abrir Android Studio
1. Abre Android Studio en tu computadora
2. En la pantalla de inicio, selecciona "Open an existing Android Studio project"
3. Navega hasta esta carpeta y selecciona la carpeta "android"
4. Haz clic en "OK"

## Paso 2: Esperar sincronización
1. Android Studio sincronizará el proyecto automáticamente
2. Espera a que termine (puede tomar unos minutos)
3. Si aparecen errores de SDK, acepta instalar los componentes sugeridos

## Paso 3: Construir la APK
1. En el menú superior, ve a "Build" > "Build Bundle(s) / APK(s)" > "Build APK(s)"
2. Espera a que termine la construcción
3. Cuando termine, aparecerá un mensaje "APK(s) generated successfully"
4. Haz clic en "locate" para encontrar tu APK

## Paso 4: Encontrar tu APK
La APK estará en:
```
android/app/build/outputs/apk/debug/app-debug.apk
```

## Paso 5: Instalar en TV Box
1. Copia el archivo app-debug.apk a una USB
2. Conecta la USB a tu TV Box
3. Activa "Fuentes desconocidas" en Configuración > Seguridad
4. Usa un explorador de archivos para instalar la APK

## ⚠️ Si hay errores:
- Asegúrate de tener Java 11 o superior instalado
- Acepta instalar cualquier SDK que Android Studio sugiera
- Si falla, ve a File > Sync Project with Gradle Files

## 🎯 Resultado final:
Tendrás una APK funcional llamada "YouTube Blocker" lista para instalar en tu TV Box.
EOF

# Crear script de construcción rápida
cat > $PROJECT_NAME/construir-apk.sh << 'EOF'
#!/bin/bash
echo "🔨 Construyendo APK..."
cd android
./gradlew assembleDebug
echo "✅ APK creada en: android/app/build/outputs/apk/debug/app-debug.apk"
EOF

chmod +x $PROJECT_NAME/construir-apk.sh

echo "✅ Proyecto creado en la carpeta: $PROJECT_NAME"
echo ""
echo "📋 INSTRUCCIONES RÁPIDAS:"
echo "1. Abre Android Studio"
echo "2. Selecciona 'Open an existing project'"
echo "3. Abre la carpeta: $PROJECT_NAME/android"
echo "4. Espera la sincronización"
echo "5. Ve a Build > Build APK(s)"
echo "6. Tu APK estará lista!"
echo ""
echo "📁 Archivos incluidos:"
ls -la $PROJECT_NAME/
