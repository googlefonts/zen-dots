Zen Dots is one of the three Latin fonts designed by Yoshimichi Ohira as part of the vast collection of Zen Fonts Foundry.

Dots was designed with a futuristic vision. This font is used to clarify different areas in science fiction films. The font information can be used as markers to identify specific locations and area details.

## Building the Fonts

The font is built using fontmake and gftools post processing script. Tools are all python based, so it must be previously installed.

To install all the Python tools into a virtualenv, do the following:

From terminal:

```

cd your/local/project/directory

#once in the project folder create a virtual environment. 
This step has to be done just once, the first time:

python3 -m venv venv

#activate the virtual environment

source venv/bin/activate

#install the required dependencies

pip install -r requirements.txt

```

Then run the this command:

```
cd sources
gftools builder config.yml
```
