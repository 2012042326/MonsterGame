
/*
 * EndScene
 * Created by Eqela Studio 2.0b7.4
 */

public class EndScene : SEScene
{

   SESprite text2;
SESprite text3;
    public void initialize(SEResourceCache rsc) {
        base.initialize(rsc);
       
rsc.prepare_font("myfont","ariel bold color=black",55);

        text2=add_sprite_for_text("GAME OVER!!!","myfont");
        text3=add_sprite_for_text("POKEMON GO!!!","myfont");

text3.move(0.375*get_scene_width(),0.375*get_scene_height());

text2.move(0.50*get_scene_width(),0.50*get_scene_height());

AudioClipManager.prepare("pokeball");
		AudioClipManager.play("pokeball");

    }

}
