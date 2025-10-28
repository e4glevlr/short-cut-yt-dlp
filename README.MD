# YouTube Audio Downloader

This script downloads the best quality audio from a YouTube video.

## Requirements

- **yt-dlp**: You need to have `yt-dlp` installed. You can install it using pip: `pip install yt-dlp`
- **FFmpeg**: You must have [FFmpeg](https://ffmpeg.org/download.html) installed and available in your system's PATH. FFmpeg is used for audio conversion.

## Usage

To download audio, run the batch file from your terminal and pass the YouTube video URL as an argument.

**Example:**
```bash
audio-best-quality.bat "https://www.youtube.com/watch?v=dQw4w9WgXcQ"
```

The audio file will be saved in the same directory with the video's title as its name.

## Running from Anywhere (Optional)

To run `audio-best-quality.bat` from any location in your terminal, you can add its directory to your system's PATH environment variable.

1.  Copy the full path to this directory (e.g., `C:\Users\YourUser\Projects\short-cut-yt-dlp`).
2.  Search for "Edit the system environment variables" in the Windows search bar and open it.
3.  Click on the "Environment Variables..." button.
4.  In the "System variables" section, find the `Path` variable, select it, and click "Edit...".
5.  Click "New" and paste the directory path you copied.
6.  Click "OK" on all windows to save the changes.
7.  Restart your terminal for the changes to take effect.

Now you can simply type `audio-best-quality.bat` in any terminal window to run the script.