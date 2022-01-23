#include <iostream>
#include <opencv2/opencv.hpp>

using namespace std;
using namespace cv;

#define RATIO 5

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

class imgPoint
{
public:
    float width;
    float height;

    void setPoint(float w, float h)
    {
        width = w;
        height = h;
    }

    void printPoint(string name = "")
    {
        cout << name << ": " << width << '*' << height << endl;
    }
};

int main(int argc, char **argv)
{
    Mat mainImage;
    Mat logoImage;
    float ratioImage;

    // Read images path
    if (argc == 3)
    {
        mainImage = imread(argv[1], IMREAD_UNCHANGED);
        logoImage = imread(argv[2], IMREAD_UNCHANGED);
        ratioImage = RATIO;
    }
    else if (argc == 4)
    {
        mainImage = imread(argv[1]);
        logoImage = imread(argv[2], IMREAD_UNCHANGED);
        ratioImage = stof(argv[3]);
    }
    else
    {
        cout << "Usage: Watermartk.out <main_image_path> <logo_image_pathk> <ratio=" << RATIO << ">" << endl;
        return -1;
    }
    ratioImage = 1 / ratioImage;
    // check input is a valid image
    if (!mainImage.data || !logoImage.data)
    {
        cout << "No image data" << endl;
        return -1;
    }

    Mat watrmrkdImage;

    // get images size ------------------------------------------------------------
    imgPoint logo, main, mainCenter, logoCenter, finalPoint;

    main.setPoint(mainImage.cols, mainImage.rows);
    main.printPoint("Main");

    // resize logo image ----------------------------------------------------------
    Size logoNewSize = Size((int)(main.width * ratioImage), (int)(main.height * ratioImage));
    resize(logoImage, logoImage, logoNewSize, INTER_AREA);
    logo.setPoint(logoImage.cols, logoImage.rows);
    // logo.printPoint("Logo");

    // get center point of images -------------------------------------------------
    mainCenter.setPoint(main.width / 2, main.height / 2);
    // mainCenter.printPoint("Main Center");

    logoCenter.setPoint(logo.width / 2, logo.height / 2);
    // logoCenter.printPoint("Logo center");

    finalPoint.setPoint(mainCenter.width - logoCenter.width, mainCenter.height - logoCenter.height);
    // finalPoint.printPoint("Add point");

    // creat a blank image with logo in center ------------------------------------
    Mat rawLogo = Mat::zeros(mainImage.size(), CV_8UC3);

    // copy image in defined poinet -----------------------------------------------
    logoImage.copyTo(rawLogo(Rect(finalPoint.width, finalPoint.height, logo.width, logo.height)));


    // using addWeighted functhion -------------------------------------------------
    addWeighted(mainImage, 1, rawLogo, 0.5, 0.0, watrmrkdImage);

    // show final image in output --------------------------------------------------
    showImage(watrmrkdImage, "output");

    // save image ------------------------------------------------------------------
    if (!saveImage(watrmrkdImage))
    {
        cout << "Save faild..." << endl;
        return -1;
    }
    cout << "Save successfull..." << endl;

        return 0;
}