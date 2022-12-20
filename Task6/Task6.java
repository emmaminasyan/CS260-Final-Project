import ij.plugin.filter.PlugInFilter;
import ij.ImagePlus;
import ij.process.ImageProcessor;
import ij.process.ColorProcessor;
import ij.process.ByteProcessor;
import ij.IJ;
import java.awt.Color;



public class Task6 implements PlugInFilter {

	String title;
	int height;
	int width;
	
	public int setup(String args, ImagePlus img) {
		title = img.getShortTitle();
		height = img.getHeight();
		width = img.getWidth();
		return DOES_RGB;
	}
	
	public void run(ImageProcessor inputIP) {
        int height1 = (int) Math.ceil((float) height / 5);
        int width1 = (int) Math.ceil((float) width / 5);

        ImageProcessor outputIP = new ColorProcessor(width1 , height1 );

        for (int i = 0; i < height1; i++) 
            for (int j = 0; j < width1; j++) {
                int[] sum = getSum(inputIP, i, j);
                outputIP.putPixel(j, i, sum);
            }
        
		
	(new ImagePlus(title + "_adjusted", outputIP)).show();
	}

    public int[] getSum(ImageProcessor img, int row, int col) {
        int red = 0, blue = 0, green = 0;
        Color color;
        for (int i = 5 * row; i < 5 * row + 5; i++) {
            for (int j = 5 * col; j < 5 * col + 5; j++) {
                if (j >= width || i >= height ) {
                    continue;
                } 
		else {
                    color = new Color(img.getPixel(j, i));
                    red += color.getRed();
                    blue += color.getBlue();
                    green += color.getGreen();
                }
                
            }
        }

        int[] result = {red / 25, green / 25, blue / 25,};
        return result;
    }
}