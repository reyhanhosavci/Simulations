
Project Description

  This MATLAB code simulates the sinusoidal motion of a ball (represented as a disk) with a given radius and frequency. Each frame of the motion is computed and stored in a cell array (sim), while the ball’s movement is visualized during the simulation.

Parameters

  r = 40 → Radius of the ball (in pixels).  
  f = 2 → Frequency of the ball’s motion (Hz).  
  fs = 20 → Frame rate of the simulation (frames per second, FPS).

How It Works

  Initialization:

    A 200x200 black matrix (A) is created.    
    The ball’s center is placed at (100, i).

  Ball Generation:

    The bwdist function computes the Euclidean distance from the center.
    All pixels with a distance less than or equal to r form a disk (the ball).

  Motion Simulation:

    A sinusoidal function (sin(2*pi*(f/fs)*i)) determines the vertical displacement of the ball.
    imtranslate is used to apply this sinusoidal motion to the ball.

Results Storage and Visualization:

  Each frame is stored in the sim cell array.  
  imshow(J) displays the ball frame by frame during the simulation.

Output

  When executed, the code shows a ball moving up and down in a sinusoidal pattern across 200 frames.
  All frames are stored in the sim variable, which can later be used to generate an animation or further analysis.
