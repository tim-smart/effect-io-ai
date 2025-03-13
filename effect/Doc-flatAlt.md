Package: `@effect/printer`<br />
Module: `Doc`<br />

## Doc.flatAlt

The `flatAlt` document will render `left` by default. However, when
`group`ed, `y` will be preferred with `left` as the fallback for cases where
`y` does not fit onto the page.

**NOTE**:
Users should be careful to ensure that `left` is less wide than `right`.
Otherwise, if `right` ends up not fitting the page, then the layout
algorithms will fall back to an even wider layout.

**Example**

```ts
import * as assert from "node:assert"
import * as Doc from "@effect/printer/Doc"
import { pipe } from "effect/Function"
import * as String from "effect/String"

const open = pipe(Doc.empty, Doc.flatAlt(Doc.text("{ ")))
const close = pipe(Doc.empty, Doc.flatAlt(Doc.text(" }")))
const separator = pipe(Doc.empty, Doc.flatAlt(Doc.text("; ")))

const prettyDo = <A>(documents: Array<Doc.Doc<A>>): Doc.Doc<A> => {
  return pipe(
    Doc.hsep([
      Doc.text("do"),
      pipe(
        documents,
        Doc.encloseSep(open, close, separator),
        Doc.align
      )
    ]),
    Doc.group
  )
}

const statements = [
  Doc.text("name:_ <- getArgs"),
  Doc.text("let greet = \"Hello, \" <> name"),
  Doc.text("putStrLn greet")
]

// If it fits, then the content is put onto a single line with the `{;}` style
assert.strictEqual(
  pipe(
    prettyDo(statements),
    Doc.render({
      style: "pretty",
      options: { lineWidth: 80 }
    })
  ),
  "do { name:_ <- getArgs; let greet = \"Hello, \" <> name; putStrLn greet }"
)

// When there is not enough space, the content is broken up onto multiple lines
assert.strictEqual(
  pipe(
    prettyDo(statements),
    Doc.render({
      style: "pretty",
      options: { lineWidth: 10 }
    })
  ),
  String.stripMargin(
    `|do name:_ <- getArgs
     |   let greet = "Hello, " <> name
     |   putStrLn greet`
  )
)
```

**Signature**

```ts
declare const flatAlt: { <B>(that: Doc<B>): <A>(self: Doc<A>) => Doc<B | A>; <A, B>(self: Doc<A>, that: Doc<B>): Doc<A | B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/printer/src/Doc.ts#L1421)

Since v1.0.0