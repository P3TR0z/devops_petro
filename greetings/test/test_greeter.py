import yaml
import os
from ..greeter import greet
from nose.tools import assert_equal

def test_greeter():
    with open(os.path.join(os.path.dirname(__file__),
            'fixtures','samples.yaml')) as fixtures_file:
        fixtures=yaml.load(fixtures_file)
        for fixture in fixtures:
            answer=fixture.pop('answer')
            assert_equal(greet(**fixture), answer)