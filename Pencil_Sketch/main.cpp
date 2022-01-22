#include <iostream>
#include <opencv2/opencv.hpp>
using namespace std;
using namespace cv;
#define K_SZIE 5


Mat imgInv(Mat in)
{
    return Scalar::all(255) - in;
}

void showImage(Mat img, string name = "")
{
    namedWindow(name, WINDOW_AUTOSIZE);

    imshow(name, img);

    waitKey(0);
}

bool saveImage(Mat img, string path = "Output.png")
{
    return imwrite(path, img);
}

int main(int argc, char **argv)
{
    // Create image variable from Mat class to store image
    Mat inputImage;
    short int ksize;

    // Read image path
    if (argc == 2)
    {
        inputImage = imread(argv[1], IMREAD_UNCHANGED);
        ksize = K_SZIE;
    }
    else if (argc == 3)
    {
        inputImage = imread(argv[1], IMREAD_UNCHANGED);
        ksize = stoi(argv[2]);
    }
    else
    {
        cout << "Usage: DoSketch.out <image_path> <ksize=" << K_SZIE << ">" << endl;
        return -1;
    }

    // check input is a valid image
    if (!inputImage.data)
    {
        cout << "No image data" << endl;
        return -1;
    }

    // show input image
    showImage(inputImage, "Input image");

    // create variabels
    Mat grayImage, grayImageInv, blurrImage, blurrImageInv, sketchOutputImage;

    // Make gray image
    cvtColor(inputImage, grayImage, COLOR_BGR2GRAY);

    // Inverse gray image
    grayImageInv = imgInv(grayImage);

    // image blurring
    GaussianBlur(grayImageInv, blurrImage, Size(ksize, ksize), 0, 0);

    // Inverse blurred image
    blurrImageInv = imgInv(blurrImage);

    // divide pixel by pixel
    divide(grayImage, blurrImageInv, sketchOutputImage, 256, -1);

    // show out put
    showImage(sketchOutputImage, "Output");

    // save image
    if (!saveImage(sketchOutputImage))
    {
        cout << "Save faild..." << endl;
        return -1;
    }
    cout << "Save successfull..." << endl;

    return 0;
}