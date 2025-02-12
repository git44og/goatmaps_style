@contour: lighten(#222222, 30);
@contours-text: lighten(#222222, 30);

@contours-line-width: 0.5;
@contours-line-smooth: 0.9;   // A value from 0 to 1

@contours-medium-multiplier: 1.5;
@contours-major-multiplier: 2.0;


#contours10[zoom>=16] {
  line-color: lighten(@contour, 10);
  line-smooth: @contours-line-smooth;
  line-width: @contours-line-width;
  line-opacity: 0.4;
}

#contours50[zoom>=14] {
  line-color: lighten(@contour, 10);
  line-smooth: @contours-line-smooth;
  line-width: @contours-line-width * @contours-medium-multiplier;
  line-opacity: 0.5;
}

#contours200[zoom>=12] {
  line-color: @contour;
  line-smooth: @contours-line-smooth;
  line-width: @contours-line-width * @contours-major-multiplier;
  line-opacity: 0.5;
}

#contours-text50 {
  text-name: "[height]";
  text-face-name: @book-fonts;
  text-placement: line;
  text-fill: @contours-text;
  [zoom >= 16][zoom < 20] {
    text-spacing: 1000;
    text-size: 10;
  }
}

#contours-text200 {
  text-name: "[height]";
  text-face-name: @book-fonts;
  text-placement: line;
  text-fill: @contours-text;
  text-halo-fill: @standard-halo-fill;
  text-halo-radius: @standard-halo-radius;
  [zoom >= 12][zoom < 14] {
    text-spacing: 6000;
    text-size: 8;
  }
  [zoom >= 14][zoom < 20] {
    text-spacing: 1000;
    text-size: 10;
  }
}