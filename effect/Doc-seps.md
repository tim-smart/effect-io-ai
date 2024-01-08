# seps

The `seps` combinator will attempt to lay out a collection of documents
separated by `space`s. If the output does not fit the page, then the
documents will be separated by newlines. This is what differentiates it from
`vsep`, which always lays out documents beneath one another.

To import and use `seps` from the "Doc" module:

```ts
import * as Doc from "@effect/printer/Doc"
// Can be accessed like this
Doc.seps
```

**Example**

```ts
import * as Doc from "@effect/printer/Doc"
import * as Render from "@effect/printer/Render"
import * as String from "effect/String"

const doc: Doc.Doc<never> = Doc.hsep([Doc.text("prefix"), Doc.seps(Doc.words("text to lay out"))])

assert.strictEqual(Render.prettyDefault(doc), "prefix text to lay out")

// If the page width is too narrow, documents are separated by newlines
assert.strictEqual(
  Render.pretty(doc, { lineWidth: 20 }),
  String.stripMargin(
    `|prefix text
     |to
     |lay
     |out`
  )
)
```

**Signature**

```ts
export declare const seps: <A>(docs: Iterable<Doc<A>>) => Doc<A>
```
