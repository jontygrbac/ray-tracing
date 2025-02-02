#include <iostream>

int main() {

    // Image

    int image_width = 256;
    int image_height = 256;

    /*Render ppm image
    The following must be included for the ppm image to render
    P3 means the colours will be in ASCII
    Then images width and height must be listed
    Finally we list our max colour, which is 255 (white)
    */ 
    std::cout << "P3\n" << image_width << ' ' << image_height << "\n255\n";

    for (int j = 0; j < image_height; j++) {
        for (int i = 0; i < image_width; i++) {
            auto r = double(i) / (image_height-1);
            auto g = double(j) / (image_height-1);
            auto b = double(j) / (image_height-1);

            int ir = int(255.999 * r);
            int ig = int(255.999 * g);
            int ib = int(255.999 * b);

            std::cout << ir << ' ' << ig << ' ' << ib << '\n';
        }
    }
}