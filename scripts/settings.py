#==============================================================================
import json

from typing import NamedTuple
from utilities import base_dir_path

#==============================================================================
SETTING_PATH = base_dir_path() / "settings.json"

#==============================================================================
class Settings(NamedTuple):
    test1: str = "test1"
    test2: int = 2
    test3: bool = True
    allowed_paths: str = ""

#==============================================================================
DEFAULT = Settings()
current = Settings()

#==============================================================================
NAMES = list(Settings.__annotations__.keys())

#==============================================================================
DESCRIPTIONS = {
    "test1": "test1 str",
    "test2": "test2 int",
    "test3": "test2 bool",
    "allowed_paths": "allowed paths",
}

#==============================================================================
def save():

    SETTING_PATH.write_text(json.dumps(current._asdict()), "utf8")

#==============================================================================
def load():

    global current
    if SETTING_PATH.is_file():
        settings = DEFAULT._asdict() | json.loads(SETTING_PATH.read_text("utf8"))
    else:
        settings = DEFAULT._asdict()
    settings = {key:value for key,value in settings.items() if key in DEFAULT._asdict()}
    current = Settings(**settings)

#==============================================================================
def restore_defaults():

    global current
    current = Settings()

#==============================================================================
