import oloren as olo
import sys
import io

@olo.register()
def hello():
    return "Hello World!"

@olo.register()
def single_img_inference(image = olo.File()):
    from PIL import Image
    from pix2tex.cli import LatexOCR
    
    img = Image.open(image)
    model = LatexOCR()
    
    return model(img)  

if __name__ == "__main__":
    olo.run("latexocr", port=80)