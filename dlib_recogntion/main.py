import face_recognition
import PIL
from PIL import Image,ImageDraw
import pickle
#import torch
import numpy as np
import cv2
import os
HOME = os.getcwd()
print(HOME)
from detect import detect_person_in_video
from pathlib import Path
from IPython.display import display, Image
from IPython import display
display.clear_output()

directory = 'Photos'
files = Path(directory).glob('*')
encodings_dict={}
for file in files:
    faces=face_recognition.load_image_file(file)
    locations = face_recognition.face_locations(faces)
    
    encodings_dict[str(file).split('/')[-1].split('.')[0]]=face_recognition.face_encodings(faces,locations)
video_path=0
detect_person_in_video(encodings_dict,video_path)
