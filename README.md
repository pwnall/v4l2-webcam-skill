# Video 4 Linux 2 (V4L2) Webcam Agent Skill

This repository is an [Agent Skill][agent-skills-spec] that teaches an AI agent
how to use a Webcam supported by the
[Video 4 Linux 2 framework][v4l2-framework-docs]. This includes all
[USB Video device Class (UVC)][usb-uvc-spec] webcams.

The skill uses the following command-line tools:

* [v4l2-ctl][v4l2-ctl-man]
* [ffmpeg][ffmpeg-man]
* [fuser][fuser-man]
* [lsusb][lsusb-man]

Example installation in the home directory.

```bash
git clone https://github.com/pwnall/v4l2-webcam-skill ~/.agents/skills/v4l2-webcam
```

## Development

A human (costan@) wrote the README as a specification for the project's desired
end state.

Gemini 3.1 Pro (via gemini-cli) wrote the first version of SKILL.md.

The same human as before (costan@) extracted sections from SKILL.md into
separate documents under `references/`, and cleaned up the writing and
formatting.

Future development is expected to follow the pattern of having Gemini write the
first version of documentation, and having a human fix and tighten the writing.

[agent-skills-spec]: https://agentskills.io/specification
[ffmpeg-man]: https://manpages.ubuntu.com/manpages/resolute/man1/ffmpeg.1.html
[fuser-man]: https://manpages.ubuntu.com/manpages/resolute/man1/fuser.1.html
[gemini-cli]: https://github.com/google-gemini/gemini-cli
[lsusb-man]: https://manpages.ubuntu.com/manpages/resolute/man8/lsusb.8.html
[usb-uvc-spec]: https://www.usb.org/document-library/video-class-v15-document-set
[v4l2-ctl-man]: https://manpages.ubuntu.com/manpages/stonking/man1/v4l2-ctl.1.html
[v4l2-framework-docs]: https://web.archive.org/web/20140221165356/https://www.kernel.org/doc/Documentation/video4linux/v4l2-framework.txt
