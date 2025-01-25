import haxe.Timer;

class IntroView extends GameState {
	override function init() {
		App.instance.musicChannel.pause = false;

		final centeringFlow = new h2d.Flow(this);
		centeringFlow.backgroundTile = h2d.Tile.fromColor(0x521f8f);
		centeringFlow.fillWidth = true;
		centeringFlow.fillHeight = true;
		centeringFlow.horizontalAlign = Middle;
		centeringFlow.verticalAlign = Middle;
		centeringFlow.maxWidth = width;
		centeringFlow.layout = Vertical;
		centeringFlow.verticalSpacing = Gui.scaleAsInt(50);

		final t = new Gui.Text("We're running out of money!", centeringFlow);
		t.textAlign = MultilineCenter;
		centeringFlow.addSpacing(Gui.scaleAsInt(50));

		final t = new Gui.Text("Boss, I don't think we can last much longer.", centeringFlow, 0.8);
		t.textAlign = MultilineCenter;
		centeringFlow.addSpacing(Gui.scaleAsInt(50));

		final t = new Gui.Text("I already told you we should have sold all the assets many years ago. We're drowning in debt now.", centeringFlow, 0.8);
		t.textAlign = MultilineCenter;
		centeringFlow.addSpacing(Gui.scaleAsInt(50));

		new Gui.TextButton(centeringFlow, "Let's go!", () -> {
			App.instance.switchState(new PlayView());
		}, Gui.Colors.BLUE, 0.8);
	}
}
