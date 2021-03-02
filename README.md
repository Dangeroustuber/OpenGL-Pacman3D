# Pacman3D 

This program compiles with almost if not all c++ compilers.

You can run this project by running following commands.

**Linux:**  
mkdir build-dir  
cd    build-dir  
cmake ..  
make  

**Windows:**  
Download the newest Cmake GUI **"https://cmake.org/download/"**

Find the folder of the source code and tell CMake where to build the binaries.
Press configure button and then click generate to make the binaries.
From there you can run the .exe which would be in the "build" folder.

**Windows/visual studio:**

With visual studio you open the folder through the GUI/Clone the project and press "CTRL+SHIFT+B" to build the project once it's loaded.
From there click on "main.cpp" and "set-up as starting item". From there you are ready to run the program.

**Windows/CLion/g++:**

CLion unlike visual studio has no solution. CLion deals in CMake projects. Therefore either clone using CLion GUI or at startup press
"new project from source" and select the cloned folder. When you open this folder CMake will automatically get generated and it's ready to run.

**Windows/visual studio with vcpkg (windows package manager)**

Go to the github repository for vcpkg and clone that/download zip. You can put in **anywhere.**  
**open powershell** in the same folder. Run command: `.\bootstrap-vcpkg.bat`, if you are using cmake, use the last line for the next part     
Run command: `.\vcpkg integrate install`    
Now you are able to run these following commands: `.\vcpkg install package_name:x64-windows`      
For this project you will need to install the following packages **glew,glfw3,assimp,glm**


# Features

    - Directional,Point and spotlight are in the game. Spotlight acts as Flashlight.
    - Ghost with AI and movement animation. Seperate AI difficulty for 4 ghosts.
    - Textures on floor, wall, ghost, pellet. Ghosts are models
    - Instanced drawing technique for pellets.
    - 3D camera for minimap projection (instead of 2D texture).
    - Free 3d movement with collision
    - Dynamic map, it is possible to create (you have to create it) and load another level.
    - Map teleport from edge
    - Our own Ghost models/textures and our own wall and floor textures as well.

# How to play

**Objective to win**  
Collect all 300 pellets across the map to complete the game. Be careful though... If you crash with ANY ghost you will LOSE!

**Ghost AI explanation**

Ghost AI works in in the way that every time a ghost is in a position where it must make a direction decision. The AI works that it calculates where the pacman position is, compared tho where the ghost position is. So if the pacman is above the ghost and no wall there, then UP is one of the possible AI direction, and if pacman is left of ghost and no wall there than LEFT is the other AI direction. It will then choose between UP or LEFT and will take the the one direction that is further away. It it's random if it's going to do an AI calculation becouse the ghosts has different level of AI. The differnece between the ghost is 1/(ghostindex+1), so the first has 100% chance to do ai calculation, the second ghost has 50%, the third one has 33% and so on.

**Flashlight**
You can toggle the flashlight with 'F'
