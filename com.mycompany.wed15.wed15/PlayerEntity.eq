
/*
 * PlayerEntity
 * Created by Eqela Studio 2.0b7.4
 */

public class PlayerEntity :SEEntity
{
	SESprite target;
	int w;
	int h;
	int wp;
	int hp;
	int genp;
	
	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
		w = get_scene_width();
		h = get_scene_height();
		genp=Math.random(0,4);
		if(genp<=1){
		rsc.prepare_image("chocban","Rhyhorn",0.1*w,0.1*h);
		target=add_sprite_for_image(SEImage.for_resource("chocban"));}
		else if(genp==2){
		rsc.prepare_image("chocban2","Ho",0.1*w,0.1*h);
		target=add_sprite_for_image(SEImage.for_resource("chocban2"));}
			else if(genp>=3){
		rsc.prepare_image("chocban3","Regi",0.1*w,0.1*h);
		target=add_sprite_for_image(SEImage.for_resource("chocban3"));}
		wp = target.get_width();
		hp = target.get_height();
		target.move(0.5*w-0.5*wp,0.5*h-0.5*hp);
	}

	
	public void tick(TimeVal now, double delta) {
		base.tick(now, delta);
		target.move(MainScene.x-0.5*wp, MainScene.y-0.5*hp);
	}
}
