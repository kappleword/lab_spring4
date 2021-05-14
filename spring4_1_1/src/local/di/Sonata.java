package local.di;

//import org.springframework.context.annotation.Scope;

//@Scope("singletone")
public class Sonata {
	private String carColor = null;
	private int wheelNum = 0;
	private int speeed = 0;
	public Sonata() {}
	public Sonata(String carColor, int wheelNum) {
		this.carColor = carColor;
		this.wheelNum = wheelNum;
	}
	public Sonata(String carColor, int wheelNum, int speed) {
		this.carColor = carColor;
		this.wheelNum = wheelNum;
		this.speeed = speed;
	}
	@Override
	public String toString() {
		return "자동차정보출력하기";
	}

}
