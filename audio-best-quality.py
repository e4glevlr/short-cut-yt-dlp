
import subprocess
import argparse
import sys


def download_best_audio(video_url):
    command = [
        "yt-dlp",
        "-f", "bestaudio",
        "--extract-audio",
        "--audio-format", "mp3",
        "--audio-quality", "0",
        "-o", "%(title)s.%(ext)s",
        video_url
    ]

    print(f"Dowloading from: {video_url}")

    try:
        subprocess.run(command, check=True)

        print("SUCCESS")

    except FileNotFoundError:
        print("FAIL", file=sys.stderr)
        print("make sure yt-dlp in PATH", file=sys.stderr)
        sys.exit(1)

    except subprocess.CalledProcessError as e:
        print(f"\nError code:{e.returncode}.", file=sys.stderr)
        print(f"{e.stderr}", file=sys.stderr)
        sys.exit(1)
    except Exception as e:
        print(f"\n{e}", file=sys.stderr)
        sys.exit(1)


if __name__ == "__main__":
    parser = argparse.ArgumentParser(
        description="Tải xuống âm thanh (mp3) chất lượng tốt nhất từ YouTube bằng yt-dlp."
    )

    parser.add_argument(
        "url",
        type=str,
        help="URL của video YouTube cần tải."
    )

    args = parser.parse_args()

    download_best_audio(args.url)