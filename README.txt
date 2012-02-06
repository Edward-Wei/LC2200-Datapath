LC2200 Datapath and Microcontroller Design Project
by Tim Martin

Foreword
First and foremost, this project is a little rough. It's been passed down
from year to year, repackaged and not always clear. It doesn't always add up so
if you're lost, it's not just you. I'm writing this README as kind of an
additional documentation to get it working. And, it might be cool to look at a
few years down the road when I'm making the big bucks.

Finally, your mileage may vary with this project. I can't imagine you'd make
much progress unless you were in the course.

Requirements
I've tried to bundle as much as I bear to in this repo. It sucks for source
control, but its good because I feel like some of these files may get lost one
day because they're not very popular (what the heck is a MICO compiler? and an
LC2200 assembly is a very limited variant of assembly.) So, execuse that. But,
I have confidence that Logisim will be around for the long haul. Its on
sourceforge.

Instructions
Write some LC2200 assembly. If you don't want to, I have provided test.s, which
should calculate 2 to the 4th power (16) and place it in register $v0. I have
confirmed this test file works with other simulators.

Assemble that assembly with "make assemble". This step requires your assembly
file to be call "test.s"

Copy the outputted "test.lc" to your clipboard from some graphical editor
(gedit).

Open the datapath file in Logisim with "make" (default target). I know this is
shitty, but the Makefile looks for logisim in _this_ directory. Hehe.

Open the Datapath component (right click and "View datapath") and right click on
the ROM next to the label "Memory".

Choose "Edit contents". Click on the first word in that table and Ctrl-V. The
data should now be placed in the ROM. Get back to the circuit.

Press Ctrl-K (enable ticks) and watch it process!

Troubleshooting
For some reason, I've noticed the microcontroller starts in a weird state. This
will cause unexpected behavior in processing. To fix this, open up the
microcontroller (right click on it from the main circiut and click "view
microcontroller") and click the little square reset button next to the state
register. This will clear the state and should give you a fresh start.
Additionally, you may have to go back to the datapath and click the little reset
buttons too on the register file, PC, and memory.

Hacking
If you want to tinker with the states, you can do so by editing the
microcode.xml. There more detail in that README. Translate the microcode with
"make translate".

