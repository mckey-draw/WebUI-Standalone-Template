# WebUI Standalone Template 

This is a WebUI tool template to run some of the tabbed extension information for Stable Diffusion as a standalone.

It should be relatively easy to implement standalone extensions based on this template.

All requirements are listed in `requirements.txt`. 

##Please install the followings first:##
- [Python](https://www.python.org/) >= 3.9 (Developed on 3.10.6)  
- [PyTorch](https://pytorch.org/) with CUDA >= 12.4 ([onnx-pytorch](https://github.com/fumihwh/onnx-pytorch) requirement; for [TorchDeepDanbooru](https://github.com/AUTOMATIC1111/TorchDeepDanbooru))  
nvidia-smi
PyTorch version mostly depends on [transformers](https://github.com/huggingface/transformers), please follow [the instruction to install transformers](https://github.com/huggingface/transformers#installation) if install specific version manually.

## Installation
Just run `install.bat`  

## Launch
You can see available command line args with `-h` or `--help` option.

Just run `launch_user.bat`




- To install PyTorch in your system to share it with other scripts
  1. Follow [the PyTorch installation guide](https://pytorch.org/get-started/locally/) with `-U` (`--upgrade`) option  
  (example) ```pip3 install -U torch torchvision --index-url https://download.pytorch.org/whl/cu118```
  1. Remove `venv` folder
  1. Run `install.bat`
- To install PyTorch only in venv
  1. Open `launch_user.bat` with some text editor
  2. Change the 3rd line to `set COMMANDLINE_ARGS="--force-install-torch cu118"` (you can choose from `cu117`, `cu118`, `cu121` or `cpu`)
  3. Run `launch_user.bat`
  4. (Remove the command line argument)
