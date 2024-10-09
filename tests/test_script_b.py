from scripts.script_b import say_hello


def test_say_hello():
    assert say_hello("Sifat") == "Hello Sifat"
