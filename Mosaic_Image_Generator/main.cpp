#include <opencv2/opencv.hpp>
#include <iostream>

using namespace std;
using namespace cv;

void showImage(Mat img, string name = "a")
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
    Mat test = Mat::zeros(Size(1000,1000), 6);
    
    showImage(test);
}