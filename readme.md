### 

<p align="center">
    <img src="Assets/git_banner_1.svg" alt="Riftbook" width="820">
  
###
**Riftbook is still in VERY early development, do not use it!**
Riftbook is a Chrome & Android Phone utility that auto-installs a Termux Debian Proot Container inside of your machine, using XPRA to Display It inside a webpage, it is designed to be elegant, easy to understand, and a one-and-done install. Nothing more and nothing less.

Riftbook uses a clean CLI to create a "Rift" into your new container, all completely hosted remotely, no internet required. It will auto detect your systems architecture and auto install packages according to what it finds, the installer is designed to be modular, so if for example, the "Proot Install" part of the script fails, you can easily just go in and run that part of the script specifically, without needing to touch anything that has already been done.

### 

<p align="center">
    <img src="Assets/git_banner_4.svg" alt="Riftbook" width="820">

###
Riftbook is an easy way to quickly set up a linux workspace inside of your Chromebook or Android Device, anything that can install termux *should* work. But wait! Can't you just install this exact enviroment yourself? Well, yeah. Riftbook is merely a tool meant to simplify the process of getting a proot container ready and set up for use, not to meantion the fact that the Operating System renders inside of a localhosted web tab! Yes, it is not as efficient as running natively, but it's the best you can do for Blocked Chromebooks, or Non-Rooted Android Phones. There is most likely a more efficient way to do this, but I wanted something web-based so all you have to do is run the script and forget about it.

### Advantages to using Riftbook:
- Easy to Setup
- No Advanced Terminal Knowledge Needed
- Stylish
- Clean and Lightweight

###

<p align="center">
    <img src="Assets/git_banner_3.svg" alt="Riftbook" width="820">

### 
Riftbook could just be a raw install script yes, but I thought it would be more fun and better for the user experience to use a CLI instead, simply because of convience and ease-of-use. For the graphics I was originally going to go with an ASCII style for everything, but it didn't look very approachable to the avarage user, so it was ultimately scrapped.

The Fancy Graphics don't take up that much storage either, especially because the installer will auto delete itself once it considers itself "done". I know not everyone has a very modern machine, so I did my best to make this run *decent* on low end machines, don't expect much though, since there isn't a lot you can do with 2-4GB of RAM...

###

<p align="center">
    <img src="Assets/git_banner_2.svg" alt="Riftbook" width="820">
  
###
I created Riftbook to solve a very specific problem, my Chromebook is very locked down, and I needed to access youtube tutorials and such for school work, but of course, most youtube videos were completely innacessible, my laptop is an ARM device, which means I couldn't change the bootloader or do much of anything, so I can up with what is technically the first version of Riftbook, a simple container that used NoVNC to display apps, it wasn't very good, and a lot of it was vibe-coded mid class, but it worked. I eventually wanted to turn it into an actual project, and then I heard about Stardance, so here we are.

### Project To-Do
No graphic for this, it's just a quick thing I should add to inform people:
Task that are completed:
- Auto Install Proot & Update Pkg
- Main Graphics and Iconography for the Project

Task That Are Pending
- Design CLI
- Fix this bug where after installing proot and logging into Debian, it wont run all the other commands.
- Configure XPRA automatically
- Design the local webpage