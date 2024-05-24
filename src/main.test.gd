extends GutTest
var mainModule = load("res://src/main.gd")

func test_given_a_function_when_return_then_equals_0():
  var instance = mainModule.new()

  var result: int = instance.a_function()

  var expected_result: int = 0
  assert_eq(result, expected_result)

func test_given_an_attribute_when_get_value_then_equals_init_value():
  var instance = mainModule.new(123)

  var result: int = instance.something

  var expected_result: int = 123
  assert_eq(result, expected_result)

func test_given_two_different_instances_when_get_value_then_values_are_different():
  var instance = mainModule.new(123)
  var anotherInstance = mainModule.new(321)

  assert_ne(instance.something, anotherInstance.something)
