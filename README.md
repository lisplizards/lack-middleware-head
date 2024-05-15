# lack-middleware-head

> Removes the response body from replies to HEAD requests

## Usage

Wrap app:

```lisp
(funcall lack/middleware/head:*lack-middleware-head* *app*)
```

Lack Builder:

```lisp
(lack:builder
 :head
 *web*)
```

## Development

Run tests:

```lisp
(asdf:test-system :foo.lisp.lack-middleware-head)
```

## Installation

Not in Quicklisp, so clone to "local-projects/".

## Author

* John Newton (<a href="mailto:jnewton@lisplizards.dev">jnewton@lisplizards.dev</a>)

## Copyright

Copyright (c) 2024 John Newton

## License

Apache-2.0
