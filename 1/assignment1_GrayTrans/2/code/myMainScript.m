%% MyMainScript

% code for colormap -> Used the code given in the assignment document
myNumOfColors = 256; 
colorScale = 0:1/(myNumOfColors-1):1;
myColorScale = [ colorScale' colorScale' colorScale' ];

%% Your code here
img1 = imread('../data/barbara.png');
img2 = imread('../data/TEM.png');
img3 = imread('../data/canyon.png');

%% myLinearContrastStretching
tic;
myLinearContrastStretching1 = myLinearContrastStretching(img1);
figure, image(img1),  title('Image 1'),colormap(myColorScale), colorbar;
figure, image(myLinearContrastStretching1), title('Linear Contrast Stretching on Image 1'), colormap(myColorScale), colorbar;

myLinearContrastStretching2 = myLinearContrastStretching(img2);
figure, image(img2),  title('Image 2'),colormap(myColorScale), colorbar;
figure, image(myLinearContrastStretching2),  title('Linear Contrast Stretching on Image 2'),colormap(myColorScale), colorbar;

myLinearContrastStretching3 = myLinearContrastStretching(img3);
figure, image(img3),  title('Image 3'),colormap(myColorScale), colorbar;
figure, image(myLinearContrastStretching3),  title('Linear Contrast Stretching on Image 3'),colormap(myColorScale), colorbar;

toc;

%% myHE
tic;
myHE1 = myHE(img1);
figure, image(img1),  title('Image 1'),colormap(myColorScale), colorbar;
figure, imagesc(myHE1), title('Histogram Equalisation 1'), colormap(myColorScale), colorbar;

myHE2 = myHE(img2);
figure, image(img2),  title('Image 2'),colormap(myColorScale), colorbar;
figure, imagesc(myHE2), title('Histogram Equalisation 2'), colormap(myColorScale), colorbar;

myHE3 = myHE(img3);
figure, image(img3),  title('Image 3'),colormap(myColorScale), colorbar;
figure, imagesc(myHE3), title('Histogram Equalisation 3'), colormap(myColorScale), colorbar;
toc;

%% Adaptive Histogram Equalization
tic;
myAHE1= myAHE(img1, 30);
figure, image(img1),  title('Image 1'),colormap(myColorScale), colorbar;
figure, imagesc(myAHE1), title('AHE on Image 1 with 61 x 61'), colormap(myColorScale), colorbar;

myAHE2= myAHE(img2, 30);
figure, image(img2),  title('Image 2'),colormap(myColorScale), colorbar;
figure, imagesc(myAHE2), title('AHE on Image 1 with 61 x 61'), colormap(myColorScale), colorbar;

myAHE3= myAHE(img3, 30);
figure, image(img3),  title('Image 3'),colormap(myColorScale), colorbar;
figure, imagesc(myAHE3), title('AHE on Image 1 with 61 x 61'), colormap(myColorScale), colorbar;
toc;

%% Redoing AHE by changing the window sizes
tic;
myAHE1s= myAHE(img1, 2);
figure, image(img1),  title('Image 1'),colormap(myColorScale), colorbar;
figure, imagesc(myAHE1s), title('AHE on Image 1 with window 5 x 5'), colormap(myColorScale), colorbar;
 
myAHE1l= myAHE(img1, 100);
figure, imagesc(myAHE1l), title('AHE on Image 1 with window 201 x 201'), colormap(myColorScale), colorbar;

myAHE2s= myAHE(img2, 2);
figure, image(img2),  title('Image 2'),colormap(myColorScale), colorbar;
figure, imagesc(myAHE2s), title('AHE on Image 2 with window 5 x 5'), colormap(myColorScale), colorbar;

myAHE2l= myAHE(img2, 100);
figure, imagesc(myAHE2l), title('AHE on Image 2 with window 201 x 201'), colormap(myColorScale), colorbar;

myAHE3s= myAHE(img3, 2);
figure, image(img3),  title('Image 3'),colormap(myColorScale), colorbar;
figure, imagesc(myAHE3s), title('AHE on Image 3 with window 5 x 5'), colormap(myColorScale), colorbar;

myAHE3l= myAHE(img3, 100);
figure, imagesc(myAHE3l), title('AHE on Image 3 with window 201 x 201'), colormap(myColorScale), colorbar;
toc;

%% Contrast-limited Adaptive Histogram Equalization
tic;
myCLAHE1= myCLAHE(img1, 30, 0.005);
figure, image(img1),  title('Image 1'),colormap(myColorScale), colorbar;
figure, imagesc(myCLAHE1), title('CLAHE on Image 1 with window 61 x 61 and threshold 0.005'), colormap(myColorScale), colorbar;

myCLAHE2= myCLAHE(img1, 30, 0.005);
figure, image(img2),  title('Image 2'),colormap(myColorScale), colorbar;
figure, imagesc(myCLAHE2), title('CLAHE on Image 2 with window 61 x 61 and threshold 0.005'), colormap(myColorScale), colorbar;

myCLAHE3= myCLAHE(img1, 30, 0.005);
figure, image(img3),  title('Image 3'),colormap(myColorScale), colorbar;
figure, imagesc(myCLAHE3), title('CLAHE on Image 3 with window 61 x 61 and threshold 0.005'), colormap(myColorScale), colorbar;
toc;

%% Contrast-limited Adaptive Histogram Equalization with value of threshold half of that tuned before
tic;
myCLAHE1= myCLAHE(img1, 30, 0.0025);
figure, image(img1),  title('Image 1'),colormap(myColorScale), colorbar;
figure, imagesc(myCLAHE1), title('CLAHE on Image 1 with window 61 x 61 and threshold 0.0025'), colormap(myColorScale), colorbar;

myCLAHE2= myCLAHE(img1, 30, 0.0025);
figure, image(img2),  title('Image 2'),colormap(myColorScale), colorbar;
figure, imagesc(myCLAHE2), title('CLAHE on Image 2 with window 61 x 61 and threshold 0.0025'), colormap(myColorScale), colorbar;

myCLAHE3= myCLAHE(img1, 30, 0.0025);
figure, image(img3),  title('Image 3'),colormap(myColorScale), colorbar;
figure, imagesc(myCLAHE3), title('CLAHE on Image 3 with window 61 x 61 and threshold 0.0025'), colormap(myColorScale), colorbar;
toc;

