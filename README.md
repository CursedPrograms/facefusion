FaceFusion
==========

> Industry leading face manipulation platform.

[![Build Status](https://img.shields.io/github/actions/workflow/status/facefusion/facefusion/ci.yml.svg?branch=master)](https://github.com/facefusion/facefusion/actions?query=workflow:ci)
[![Coverage Status](https://img.shields.io/coveralls/facefusion/facefusion.svg)](https://coveralls.io/r/facefusion/facefusion)
![License](https://img.shields.io/badge/license-MIT-green)


Preview
-------

![Preview](https://raw.githubusercontent.com/facefusion/facefusion/master/.github/preview.png?sanitize=true)


Installation
------------

Be aware, the [installation](https://docs.facefusion.io/installation) needs technical skills and is not recommended for beginners. In case you are not comfortable using a terminal, our [Windows Installer](http://windows-installer.facefusion.io) and [macOS Installer](http://macos-installer.facefusion.io) get you started.


Usage
-----

Run the command:

```
python facefusion.py [commands] [options]

options:
  -h, --help                                      show this help message and exit
  -v, --version                                   show program's version number and exit

commands:
    run                                           run the program
    headless-run                                  run the program in headless mode
    batch-run                                     run the program in batch mode
    force-download                                force automate downloads and exit
    job-list                                      list jobs by status
    job-create                                    create a drafted job
    job-submit                                    submit a drafted job to become a queued job
    job-submit-all                                submit all drafted jobs to become a queued jobs
    job-delete                                    delete a drafted, queued, failed or completed job
    job-delete-all                                delete all drafted, queued, failed and completed jobs
    job-add-step                                  add a step to a drafted job
    job-remix-step                                remix a previous step from a drafted job
    job-insert-step                               insert a step to a drafted job
    job-remove-step                               remove a step from a drafted job
    job-run                                       run a queued job
    job-run-all                                   run all queued jobs
    job-retry                                     retry a failed job
    job-retry-all                                 retry all failed jobs
```


### FFMpeg Setup (Windows)

1. **Download FFMpeg**  
   Visit the following link and download the latest static build:  
   https://www.gyan.dev/ffmpeg/builds/

2. **Extract the Archive**  
   Unzip the downloaded archive to `C:\`.

3. **Rename and Organize**  
   Rename the extracted folder to `ffmpeg`, and ensure the following folder structure:

```bash
C:\ffmpeg\bin
├── ffmpeg.exe
├── ffplay.exe
└── ffprobe.exe
```

4. **Set Environment Variable (Optional for Global Access)**  
   To make `ffmpeg` accessible system-wide:

   - Open **System Properties** > **Environment Variables**
   - Under **User variables** (for your PC username), find and select **Path**
   - Click **Edit** > **New** and paste:

     ```
     C:\ffmpeg\bin
     ```

   - Click **OK** to apply the changes
  
5. Test it
     Close and reopen your terminal (CMD), then type:

    ```
    ffmpeg -version
    ```
    If it prints the version info, you're good.

6. The code below will automatically append `C:\ffmpeg\bin` to the runtime path, so no need to set environment variables manually. 

```bash
# === CONFIG ===

# Path fix for ffmpeg
os.environ["PATH"] += os.pathsep + r"C:\ffmpeg\bin"
```

## Requirements:

FFMpeg

```bash
filetype==1.2.0
gradio==5.9.1
gradio-rangeslider==0.0.8
numpy==2.2.0
onnx==1.17.0
onnxruntime==1.20.1
opencv-python==4.10.0.84
psutil==6.1.1
pydantic==2.10.6
tqdm==4.67.1
scipy==1.14.1
git+https://github.com/s0md3v/roop
```

Documentation
-------------

Read the [documentation](https://docs.facefusion.io) for a deep dive.
