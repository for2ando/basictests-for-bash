# functions for test basic statuses of the bash shell.

is_null() { # set and the value is a simple null
            # (The 'simple' means that empty array value: () is not null).
  eval test "\"\${$1:-a}\"" != "\"\${$1-a}\""
}

is_not_null() { # set and the value is not a null, or unset
  eval test "\"\${$1:-a}\"" = "\"\${$1-a}\""
}

is_set() { # set with any value (includes null).
  is_null "$1" || is_array "$1" || test -n "${!1}"
}

is_unset() { # not set any value nor null
  is_not_null "$1" && ! is_array "$1" && test -z "${!1}"
}

is_variable() {
  is_simple_variable "$1" || is_array "$1"
}

is_simple_variable() {
  declaration="$(declare -p "$1" 2>/dev/null)" && {
    set $declaration
    test "$2" = --
  }
}

is_array() {
  declaration="$(declare -p "$1" 2>/dev/null)" && {
    set $declaration
    test "$2" = -a -o "$2" = -A
  }
}

is_indexed_array() {
  declaration="$(declare -p "$1" 2>/dev/null)" && {
    set $declaration
    test "$2" = -a
  }
}

is_associative_array() {
  declaration="$(declare -p "$1" 2>/dev/null)" && {
    set $declaration
    test "$2" = -A
  }
}

is_function() {
  declaration="$(declare -p -F "$1" 2>/dev/null)" && {
    set $declaration
    test "$2" = -f
  }
}
