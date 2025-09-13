import animate, {
  CancelSet,
} from "SpectaclesInteractionKit.lspkg/Utils/animate";

const START_SIZE = 0;
const END_SIZE = 1;

@component
export class CircleAnimation extends BaseScriptComponent {
  private rend = this.getSceneObject().getComponent(
    "Component.RenderMeshVisual"
  );
  private completeCancel: CancelSet = new CancelSet();

  setLoadingAmount(amount: number) {
    this.rend.mainPass.InnerCircleMask = amount;
    if (amount > 0.1) {
      this.rend.mainPass.AnimationSwitch = false;
    }
  }

  enableScanAnimation(enabled: boolean) {
    this.rend.mainPass.AnimationSwitch = enabled;
  }

  setCircleColor(color: vec4) {
    this.rend.mainPass.dotsColor = color;
    this.rend.mainPass.circleColor = color;
  }

  setLoadingColor(isWhite: boolean) {
    this.rend.mainPass.whiteColor = isWhite
      ? new vec4(1, 1, 1, 1)
      : new vec4(1, 1, 0, 1);
  }

  reset() {
    this.rend.mainPass.AnimationSwitch = true;
    this.rend.mainPass.Thickness = START_SIZE;
  }

  animateCircleOut(callback: () => void) {
    if (this.completeCancel) this.completeCancel.cancel();
    animate({
      easing: "ease-out-cubic",
      duration: 0.5,
      update: (t: number) => {
        this.rend.mainPass.Amount = 1;
        this.rend.mainPass.Thickness = MathUtils.lerp(START_SIZE, END_SIZE, t);
      },
      ended: callback,
      cancelSet: this.completeCancel,
    });
  }

  animateCircleIn(callback: () => void) {
    if (this.completeCancel) this.completeCancel.cancel();
    animate({
      easing: "ease-in-cubic",
      duration: 0.5,
      update: (t: number) => {
        this.rend.mainPass.Amount = 1;
        this.rend.mainPass.Thickness = MathUtils.lerp(END_SIZE, START_SIZE, t);
      },
      ended: callback,
      cancelSet: this.completeCancel,
    });
  }

  animateCircleFull(callback: () => void) {
    if (this.completeCancel) this.completeCancel.cancel();
    animate({
      easing: "linear",
      duration: 0.5,
      update: (t: number) => {
        this.rend.mainPass.Amount = 1;
        this.rend.mainPass.Thickness = this.PingPong(START_SIZE, END_SIZE, t);
      },
      ended: callback,
      cancelSet: this.completeCancel,
    });
  }

  private PingPong(min: number, max: number, t: number): number {
    const range = max - min;
    const scaledT = t * Math.PI;
    return min + Math.sin(scaledT) * range;
  }
}
