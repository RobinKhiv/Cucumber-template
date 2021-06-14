package com.qa.examples.cucumber_base.step_definitions;

import static org.junit.Assert.assertEquals;

import com.qa.examples.cucumber_base.Calculator;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class CanCalculateDivisionAndMutiplication {
	private Calculator calculator = new Calculator();
	private double actualResult;

	@Given("a mutiply and divide calculator")
	public void a_mutiply_and_divide_calculator() {
		calculator = new Calculator();
	}

	@When("{int} and {int} are divided")
	public void and_are_divided(Integer int1, Integer int2) {
		actualResult = calculator.divide(int1, int2);
	}

	@Then("then result should be {int}")
	public void then_result_should_be(Integer int1) {
		assertEquals(int1.doubleValue(), actualResult, 2);
	}

	@When("{int} and {int} are mutiplied")
	public void and_are_mutiplied(Integer int1, Integer int2) {
		actualResult = calculator.multiply(int1, int2);
	}

}
