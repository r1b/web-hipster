# web-hipster

## Usage

`./web-hipster fmtstr < wordlist`

## Examples

`./web-hipster "https://github.com/%s" < wordlists/dict3`

`./web-hipster "https://%s.tumblr.com/" < wordlists/dict4`

`./web-hipster "https://reddit.com/user/%s" < wordlists/short`

## Wordlists

**short** Is a list of all words with 1-3 characters

It was generated with [crunch](https://sourceforge.net/projects/crunch-wordlist/)

`crunch 1 3 abcdefghijklmnopqrstuvwxyz0123456789-`

**dict${n}** Is a list of words with length n

It was generated with this pipeline:

`
cat /usr/share/dict/words |
egrep '^.{$n}$' |
grep -v \' |
awk '{print tolower($0)}' |
sort -u
`

# TODO
The HTTP response code is not perfect information. Github returns a 404 for
reserved slugs. Reddit returns a 404 for deleted accounts that cannot be
re-registered.

The characters allowed in usernames differ from site to site.
