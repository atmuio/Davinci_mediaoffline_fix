# VideoP Batch Converter – Convertitore DNxHR HQ per DaVinci Resolve

Uno script batch per Windows che automatizza la conversione di video `.mp4` (come quelli registrati da smartphone Android o iPhone) nel formato **DNxHR HQ**, compatibile con **DaVinci Resolve gratuito su Windows**, che non supporta H.265/HEVC 10-bit.

---

## 🔧 Caratteristiche

- ✅ Supporta conversione multipla automatica
- ✅ Nessuna perdita audio (l'audio viene copiato senza ricodifica)
- ✅ Genera file `.mov` di alta qualità (codec DNxHR HQ)
- ✅ Salva i file convertiti in una sottocartella `Export`
- ✅ Funziona semplicemente con un doppio clic

---

## 📂 Struttura delle cartelle

Lo script opera su questa struttura:

```bash
Desktop
└── VideoP
├── video1.mp4
├── video2.mp4
└── Export
├── video1_converted.mov
└── video2_converted.mov
```

---

Crea una cartella chiamata VideoP sul Desktop

Inserisci dentro i tuoi file .mp4 da convertire

Copia lo script converti_videop.bat dove preferisci (ad esempio sul Desktop)

Fai doppio clic sul file converti_videop.bat

Attendi il completamento della conversione

👉 Tutti i file .mp4 verranno convertiti in .mov e salvati in Desktop\VideoP\Export.

---

## 🛠️ Requisiti

- Windows 10/11
- [FFmpeg](https://ffmpeg.org) installato e accessibile da riga di comando (aggiunto al PATH)

---

## 🧰 Installazione di FFmpeg (passaggi)

1. Vai su [https://ffmpeg.org/download.html](https://ffmpeg.org/download.html)
2. Clicca su “Windows”
3. Scarica la versione **Static build**
4. Estrai lo ZIP in `C:\ffmpeg` (o altra cartella a piacere)
5. Aggiungi `C:\ffmpeg\bin` al **PATH** di sistema:
   - Premi `Win + R`, scrivi `sysdm.cpl`, vai su **Avanzate > Variabili d'ambiente**
   - Nella sezione “Variabili di sistema”, modifica la variabile `Path`
   - Aggiungi una nuova voce: `C:\ffmpeg\bin`
   - Conferma tutto

6. Apri un prompt dei comandi e digita:

```bash
ffmpeg -version

