https://google.github.io/styleguide/shellguide.html

# Quoting

1. Всегда заключайте в кавычки строки, содержащие переменные, подстановки команд, пробелы или специальные символы оболочки, если необходим аккуратный расширенный вывод без кавычек или если это целочисленная переменная внутри оболочки (см. следующий пункт).
2. Используйте массивы для безопасного заключения в кавычки списков элементов, особенно флагов командной строки. См. раздел "Массивы" ниже.
3. По желанию заключайте в кавычки внутренние переменные оболочки, объявленные как целочисленные: $?, $#, $$, $! (см. man bash). Предпочтительнее заключать в кавычки "именованные" внутренние целочисленные переменные, например, PPID и т. д., для согласованности.
4. Предпочтительнее заключать в кавычки строки, которые являются "словами" (в отличие от параметров команд или имен файлов).
5. Никогда не заключайте в кавычки литеральные целые числа.
6. Будьте внимательны к правилам заключения в кавычки для сопоставлений шаблонов в [[ … ]]. См. раздел "Тест, [ … ], и [[ … ]]" ниже.
7. Используйте "$@", если у вас нет конкретной причины использовать $*, такую как простое добавление аргументов к строке в сообщении или журнале.

```
# 'Single' quotes indicate that no substitution is desired.
# "Double" quotes indicate that substitution is required/tolerated.

# Simple examples

# "quote command substitutions"
# Note that quotes nested inside "$()" don't need escaping.
flag="$(some_command and its args "$@" 'quoted separately')"

# "quote variables"
echo "${flag}"

# Use arrays with quoted expansion for lists.
declare -a FLAGS
FLAGS=( --foo --bar='baz' )
readonly FLAGS
mybinary "${FLAGS[@]}"

# It's ok to not quote internal integer variables.
if (( $# > 3 )); then
  echo "ppid=${PPID}"
fi

# "never quote literal integers"
value=32
# "quote command substitutions", even when you expect integers
number="$(generate_number)"

# "prefer quoting words", not compulsory
readonly USE_INTEGER='true'

# "quote shell meta characters"
echo 'Hello stranger, and well met. Earn lots of $$$'
echo "Process $$: Done making \$\$\$."

# "command options or path names"
# ($1 is assumed to contain a value here)
grep -li Hugo /dev/null "$1"

# Less simple examples
# "quote variables, unless proven false": ccs might be empty
git send-email --to "${reviewers}" ${ccs:+"--cc" "${ccs}"}

# Positional parameter precautions: $1 might be unset
# Single quotes leave regex as-is.
grep -cP '([Ss]pecial|\|?characters*)$' ${1:+"$1"}

# For passing on arguments,
# "$@" is right almost every time, and
# $* is wrong almost every time:
#
# * $* and $@ will split on spaces, clobbering up arguments
#   that contain spaces and dropping empty strings;
# * "$@" will retain arguments as-is, so no args
#   provided will result in no args being passed on;
#   This is in most cases what you want to use for passing
#   on arguments.
# * "$*" expands to one argument, with all args joined
#   by (usually) spaces,
#   so no args provided will result in one empty string
#   being passed on.
# (Consult `man bash` for the nit-grits ;-)

(set -- 1 "2 two" "3 three tres"; echo $#; set -- "$*"; echo "$#, $@")
(set -- 1 "2 two" "3 three tres"; echo $#; set -- "$@"; echo "$#, $@")
```


# Comments:

### File Header:
Start each file with a description of its contents.
```
#!/bin/bash
#
# Perform hot backups of Oracle databases.
```

### Function Comments:
1. Any function that is not both obvious and short must be commented.
2. All function comments should describe the intended API behaviour using:
  1. Description of the function.
  2. Globals: List of global variables used and modified.
  3. Arguments: Arguments taken.
  4. Outputs: Output to STDOUT or STDERR.
  5. Returns: Returned values other than the default exit status of the last command run.

Example:
```
#######################################
# Cleanup files from the backup directory.
# Globals:
#   BACKUP_DIR
#   ORACLE_SID
# Arguments:
#   None
#######################################
function cleanup() {
  …
}

#######################################
# Get configuration directory.
# Globals:
#   SOMEDIR
# Arguments:
#   None
# Outputs:
#   Writes location to stdout
#######################################
function get_dir() {
  echo "${SOMEDIR}"
}

#######################################
# Delete a file in a sophisticated manner.
# Arguments:
#   File to delete, a path.
# Returns:
#   0 if thing was deleted, non-zero on error.
#######################################
function del_thing() {
  rm "$1"
}
```

3. ### TODO Comments:
Example:
```
# TODO(mrmonkey): Handle the unlikely edge cases (bug ####)
```

4. ### Pipelines"
Example:
```
# All fits on one line
command1 | command2

# Long commands
command1 \
  | command2 \
  | command3 \
  | command4
```