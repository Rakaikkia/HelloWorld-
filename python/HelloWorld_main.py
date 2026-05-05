#!/usr/bin/env python3
"""Print 'Hello World!' and exit with code 0 on success or 1 on error."""

import sys


def hello_world() -> None:
    """Print 'Hello World!' to standard output."""
    print("Hello World!")


def main() -> int:
    """Execute the main logic. Return 0 on success, 1 on failure."""
    try:
        hello_world()
    except OSError as e:
        print(f"ERROR: {e}", file=sys.stderr)
        return 1
    return 0


if __name__ == "__main__":
    sys.exit(main())

