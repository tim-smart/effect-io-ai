# vcat

The `vcat` combinator concatenates all documents in a collection vertically.
If the output is grouped then the line breaks are removed.

In other words `vcat` is like `vsep`, with newlines removed instead of
replaced by spaces.

To import and use `vcat` from the "Doc" module:

ts
import \* as Doc from "@effect/printer/Doc"
// Can be accessed like this
Doc.vcat
undefined

**Example**

```ts
import * as Doc from "@effect/printer/Doc"
import * as String from "effect/String"

const doc: Doc.Doc<never> = Doc.vcat(Doc.words("lorem ipsum dolor"))

assert.strictEqual(
  Doc.render(doc, { style: "pretty" }),
  String.stripMargin(
    `|lorem
     |ipsum
     |dolor`
  )
)
```

**Signature**

```ts
export declare const vcat: <A>(docs: Iterable<Doc<A>>) => Doc<A>
```
