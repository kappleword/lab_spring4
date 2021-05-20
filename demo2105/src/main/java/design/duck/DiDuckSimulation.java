package design.duck;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class DiDuckSimulation {

	public static void main(String[] args) {
		ApplicationContext context = 
				new ClassPathXmlApplicationContext("design\\duck\\duckBean.xml");
		Duck myDuck = (Duck)context.getBean("myDuck");
		myDuck.performQuack();
		myDuck.performFly();
		myDuck = null;
		myDuck = new MallardDuck();
		myDuck.performQuack();
		myDuck.performFly();		
	}

}
