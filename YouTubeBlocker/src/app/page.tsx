"use client"

import { useState, useEffect } from 'react'

export default function YouTubeBlocker() {
  const [isBlocking, setIsBlocking] = useState(false)
  const [blockedAttempts, setBlockedAttempts] = useState(0)
  const [lastBlockTime, setLastBlockTime] = useState<string>('')

  useEffect(() => {
    // Simular el bloqueo de YouTube
    if (isBlocking) {
      const interval = setInterval(() => {
        // Simular detección de intento de acceso a YouTube
        if (Math.random() > 0.7) {
          setBlockedAttempts(prev => prev + 1)
          setLastBlockTime(new Date().toLocaleTimeString())
        }
      }, 3000)

      return () => clearInterval(interval)
    }
  }, [isBlocking])

  const toggleBlocking = () => {
    setIsBlocking(!isBlocking)
    if (!isBlocking) {
      setBlockedAttempts(0)
      setLastBlockTime('')
    }
  }

  return (
    <div className="min-h-screen bg-black text-white p-6">
      <div className="max-w-4xl mx-auto">
        {/* Header */}
        <header className="text-center mb-8">
          <h1 className="text-4xl font-bold mb-2">YouTube Blocker</h1>
          <p className="text-gray-400">Control parental para TV Box</p>
        </header>

        {/* Status Card */}
        <div className="bg-gray-900 rounded-lg p-6 mb-6 border border-gray-700">
          <div className="flex items-center justify-between mb-4">
            <h2 className="text-2xl font-semibold">Estado del Bloqueo</h2>
            <div className={`w-4 h-4 rounded-full ${isBlocking ? 'bg-red-500' : 'bg-gray-500'}`}></div>
          </div>
          
          <div className="grid grid-cols-1 md:grid-cols-3 gap-4 mb-6">
            <div className="text-center">
              <div className="text-3xl font-bold text-red-500">{isBlocking ? 'ACTIVO' : 'INACTIVO'}</div>
              <div className="text-gray-400">Bloqueo</div>
            </div>
            <div className="text-center">
              <div className="text-3xl font-bold text-yellow-500">{blockedAttempts}</div>
              <div className="text-gray-400">Intentos Bloqueados</div>
            </div>
            <div className="text-center">
              <div className="text-xl font-bold text-blue-500">{lastBlockTime || '--:--:--'}</div>
              <div className="text-gray-400">Último Bloqueo</div>
            </div>
          </div>

          {/* Toggle Button */}
          <button
            onClick={toggleBlocking}
            className={`w-full py-4 px-6 rounded-lg font-bold text-xl transition-all duration-300 ${
              isBlocking 
                ? 'bg-red-600 hover:bg-red-700 text-white' 
                : 'bg-green-600 hover:bg-green-700 text-white'
            }`}
          >
            {isBlocking ? 'DESACTIVAR BLOQUEO' : 'ACTIVAR BLOQUEO'}
          </button>
        </div>

        {/* Blocked Sites */}
        <div className="bg-gray-900 rounded-lg p-6 mb-6 border border-gray-700">
          <h3 className="text-xl font-semibold mb-4">Sitios Bloqueados</h3>
          <div className="space-y-2">
            <div className="flex items-center justify-between p-3 bg-gray-800 rounded">
              <span>youtube.com</span>
              <span className={`px-2 py-1 rounded text-sm ${isBlocking ? 'bg-red-600' : 'bg-gray-600'}`}>
                {isBlocking ? 'BLOQUEADO' : 'PERMITIDO'}
              </span>
            </div>
            <div className="flex items-center justify-between p-3 bg-gray-800 rounded">
              <span>m.youtube.com</span>
              <span className={`px-2 py-1 rounded text-sm ${isBlocking ? 'bg-red-600' : 'bg-gray-600'}`}>
                {isBlocking ? 'BLOQUEADO' : 'PERMITIDO'}
              </span>
            </div>
            <div className="flex items-center justify-between p-3 bg-gray-800 rounded">
              <span>youtu.be</span>
              <span className={`px-2 py-1 rounded text-sm ${isBlocking ? 'bg-red-600' : 'bg-gray-600'}`}>
                {isBlocking ? 'BLOQUEADO' : 'PERMITIDO'}
              </span>
            </div>
          </div>
        </div>

        {/* Instructions */}
        <div className="bg-gray-900 rounded-lg p-6 border border-gray-700">
          <h3 className="text-xl font-semibold mb-4">Instrucciones de Uso</h3>
          <div className="space-y-3 text-gray-300">
            <p>1. Instala esta APK en tu TV Box Android</p>
            <p>2. Activa el bloqueo usando el botón principal</p>
            <p>3. La aplicación bloqueará automáticamente el acceso a YouTube</p>
            <p>4. Puedes ver las estadísticas de bloqueo en tiempo real</p>
            <p>5. Para desactivar, simplemente presiona el botón nuevamente</p>
          </div>
        </div>

        {/* Footer */}
        <footer className="text-center mt-8 text-gray-500">
          <p>YouTube Blocker v1.0 - Control Parental para TV Box</p>
        </footer>
      </div>
    </div>
  )
}
