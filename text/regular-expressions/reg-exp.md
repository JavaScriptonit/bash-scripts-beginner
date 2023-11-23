# Напоминалка по регулярным выражениям:

## Символы:

`.` - любой символ, кроме перевода строки.
`\d` - любая цифра (эквивалентно [0-9]).
`\w` - любая буква, цифра или знак подчеркивания (эквивалентно [a-zA-Z0-9_]).
`\s` - любой пробельный символ (пробел, табуляция, перевод строки и т.д.).
`^` - начало строки.
`$` - конец строки.

## Квантификаторы:

`*` - ноль или более повторений предыдущего символа.
`+` - одно или более повторений предыдущего символа.
`?` - ноль или одно повторение предыдущего символа.
`{n}` - ровно n повторений.
`{n,}` - как минимум n повторений.
`{n,m}` - от n до m повторений.

## Группировка и альтернатива:

`()` - группировка выражения.
`|` - альтернатива, соответствует одному из выражений.

### Примеры:

`\d{3}` - соответствует любой последовательности из трех цифр.
`[aeiou]` - соответствует любой гласной букве.
`^The` - соответствует строке, начинающейся с "The".
`\b\t\b` - соответствует отдельному символу табуляции.