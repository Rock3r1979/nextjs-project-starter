import type { CapacitorConfig } from '@capacitor/cli';

const config: CapacitorConfig = {
  appId: 'com.tvbox.youtubeblocker',
  appName: 'YouTube Blocker',
  webDir: 'out',
  server: {
    androidScheme: 'https'
  }
};

export default config;
