from src import mod
from src.mod import myfunc


def test_myfunc():
    result = myfunc()
    assert result == 1