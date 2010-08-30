require "test/unit"

class TestCycleTracks < Test::Unit::TestCase
    def test_simple_cycle13_4_split
        a = ['a', 'b', 'c', 'd', 'e', 'f', 'g',
            'h', 'i', 'j', 'k', 'l', 'm']
        skip_tracks(a, 4)
        assert_equal(['e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'a', 'b', 'c', 'd'], a)
    end
    def test_simple_cycle13_4
        a = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm']
        skip_tracks(a, 4)
        assert_equal(['e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'a', 'b', 'c', 'd'], a)
    end
    def test_simple_cycle13_1
        a = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm']
        skip_tracks(a, 1)
        assert_equal(['b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'a'], a)
    end
    def test_simple_cycle84
        a = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h']
        skip_tracks(a, 4)
        assert_equal(['e', 'f', 'g', 'h', 'a', 'b', 'c', 'd'], a)
    end
    def test_simple_cycle83
        a = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h']
        skip_tracks(a, 3)
        assert_equal(['d', 'e', 'f', 'g', 'h', 'a', 'b', 'c'], a)
    end
    def test_simple_cycle8minus3
        a = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h']
        skip_tracks(a, -3)
        assert_equal(['f', 'g', 'h', 'a', 'b', 'c', 'd', 'e'], a)
    end
    def test_simple_cycle42
        a = ['a', 'b', 'c', 'd']
        skip_tracks(a, 2)
        assert_equal(['c', 'd', 'a', 'b'], a)
    end
    def test_simple_cycle41
        a = ['a', 'b', 'c', 'd']
        skip_tracks(a, 1)
        assert_equal(['b', 'c', 'd', 'a'], a)
    end
    def test_simple_cycle31
        a = ['a', 'b', 'c']
        skip_tracks(a, 1)
        assert_equal(['b', 'c', 'a'], a)
    end
    def test_simple_cycle32
        a = ['a', 'b', 'c']
        skip_tracks(a, 2)
        assert_equal(['c', 'a', 'b'], a)
    end
    def test_simple_cycle33
        a = ['a', 'b', 'c']
        skip_tracks(a, 3)
        assert_equal(['a', 'b', 'c'], a)
    end
    def test_simple_cycle3minus1
        a = ['a', 'b', 'c']
        skip_tracks(a, -1)
        assert_equal(['c', 'a', 'b'], a)
    end
    def test_simple_cycle3minus2
        a = ['a', 'b', 'c']
        skip_tracks(a, -2)
        assert_equal(['b', 'c', 'a'], a)
    end
    def test_simple_cycle3minus3
        a = ['a', 'b', 'c']
        skip_tracks(a, -3)
        assert_equal(['a', 'b', 'c'], a)
    end
end