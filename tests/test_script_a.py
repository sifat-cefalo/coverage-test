from scripts.script_a import custom_sum, subtract


def test_sum():
    assert custom_sum(2, 3) == 5


def test_subtract():
    assert subtract(5, 2) == 3
