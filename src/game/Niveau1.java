package game;

public class Niveau1 extends Map {
	
	public Niveau1(String mapName, String backgroundPath, int width, int height) {
		super(mapName,backgroundPath,width, height);

		
				
		}
	public static int[] [] Chemin1() {
	
	
		int Chemin1 [][] ={{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
				{1,2,3,4,0,0,0,0,0,0,0,0,0,0,0},
				{0,0,0,5,0,0,0,0,0,0,0,0,0,0,0},
				{0,0,0,6,0,0,0,0,0,0,0,0,0,0,0},
				{0,0,0,7,8,9,10,11,0,0,0,0,0,0,0},
				{0,0,0,0,0,0,0,12,0,0,0,0,0,0,0},
				{0,0,0,0,0,0,0,13,14,15,16,17,0,0,0},
				{0,0,0,0,0,0,0,0,0,0,0,18,0,0,0},
				{0,0,0,0,0,0,0,0,0,0,0,19,0,0,0},
				{0,0,0,0,0,0,0,0,0,0,0,20,21,0,0},
				{0,0,0,0,0,0,0,0,0,0,0,0,22,23,0},
				{0,0,0,0,0,0,0,0,0,0,0,0,0,24,0},
				{0,0,0,0,0,0,0,0,0,0,0,0,0,25,0},
				{0,0,0,0,0,0,0,0,0,0,0,0,0,26,0},
				{0,0,0,0,0,0,0,0,0,0,0,0,0,27,0}};
		return Chemin1;
	}
		
}

