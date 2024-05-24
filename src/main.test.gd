extends GutTest
var mainModule = load("res://src/main.gd")

func test_given_a_function_when_return_then_equals_0():
  var main = mainModule.new()

  var result: int = main.a_function()

  var expected_result: int = 0
  assert_eq(result, expected_result)