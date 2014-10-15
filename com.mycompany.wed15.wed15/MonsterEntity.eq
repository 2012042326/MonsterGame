
/*
 * MonsterEntity
 * Created by Eqela Studio 2.0b7.4
 */

public class MonsterEntity : SEEntity
{
	SESprite monster;
	int w;
	int h;
	int mx;
	int my;
	int npx;
	int npy;
	int speed;
	int gen;
	 SESprite text2;
	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
		w = get_scene_width();
		h = get_scene_height();
		rsc.prepare_font("myfont","ariel bold color=white",105);
		gen=Math.random(0,6);
		if(gen<=1){
				rsc.prepare_image("TR","www",0.1*w,0.1*h);
				monster=add_sprite_for_image(SEImage.for_resource("TR"));}
		else if(gen==2) {
			rsc.prepare_image("TR3","mewo",0.1*w,0.1*h);
		monster=add_sprite_for_image(SEImage.for_resource("TR3"));
		}
			else if(gen==3) {
			rsc.prepare_image("TR4","dra",0.1*w,0.1*h);
		monster=add_sprite_for_image(SEImage.for_resource("TR4"));
		}
			else if(gen==4) {
			rsc.prepare_image("TR2","war",0.1*w,0.1*h);
		monster=add_sprite_for_image(SEImage.for_resource("TR2"));
		}
			else if(gen>=5) {
			rsc.prepare_image("TR5","clo",0.1*w,0.1*h);
		monster=add_sprite_for_image(SEImage.for_resource("TR5"));
		}
		monster.move(Math.random(0,w),Math.random(0,h));
		speed=Math.random(5,10)*10;
	
	}

	public void tick(TimeVal now, double delta) {
		base.tick(now, delta);
	mx = monster.get_x();
		my = monster.get_y();
		npx = MainScene.x;
		npy = MainScene.y;
	
		monster.move(mx+(npx-mx)/speed,my+(npy-my)/speed);

		if((mx +0.15*get_scene_width()>= MainScene.x && mx<=MainScene.x) && (my+0.15*get_scene_height() >= MainScene.y&&my<=MainScene.y)) {
			MainScene.collide = true;			
		}
 
	}

	public void cleanup() {
		base.cleanup();
	}
}
