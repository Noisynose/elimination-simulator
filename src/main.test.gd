extends GutTest

func test_given_a_function_when_return_then():
  var instance = load("res://src/main.gd")

  var result: int = instance.a_function()

  var expected_result: int = 1
  assert_eq(result, expected_result)