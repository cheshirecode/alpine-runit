# Idea

Basing off https://hub.docker.com/_/alpine/, most of my current images in
development have these packages in common:

* **openntpd** for timezone sync
* **inotify-tools** for watch mode
* **runit** for multi-services (usually used in conjunction with **inotify** to
  watch folders/files)
* **curl** (troubleshoot HTTP requests inside container and healthchecks)

# _./scripts_ folder

Store all common init scripts and copy over in one step and handle line endings
for Windows-Linux compatibility.
