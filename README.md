# gerger

modern git life for gerrit

## install

Clone this repository and add the `bin` directory to `$PATH`

## usage

```bash
git branch feat-1
# add some changes
git commit -m "change 1"
# add some changes
git commit -m "change 2"

gerpush "change 1 and 2"

# after submit
gerdown
```

### gerpush

```bash
gerpush "<your message>"
```

create or update change set.

`gerpush` command create a new branch named `<your-branch>--gerrit`

### gerdown

remove gerrit branch and rename original branch to `done/<your-branch>`
