## fillBreak

The `fillBreak` combinator first lays out the document `x` and then appends
`space`s until the width of the document is equal to the specified `width`.
If the width of `x` is already larger than the specified `width`, the nesting
level is increased by the specified `width` and a `line` is appended.

**Example**

```ts
import * as assert from "node:assert"
import * as Doc from "@effect/printer/Doc"
import { pipe } from "effect/Function"
import * as String from "effect/String"

type Signature = [name: string, type: string]

const signatures: Array<Signature> = [
  ["empty", "Doc"],
  ["nest", "Int -> Doc -> Doc"],
  ["fillSep", "[Doc] -> Doc"]
]

const prettySignature = <A>([name, type]: Signature): Doc.Doc<A> =>
  Doc.hsep([
    pipe(Doc.text(name), Doc.fillBreak(5)),
    Doc.text("::"),
    Doc.text(type)
  ])

const doc = Doc.hsep([
  Doc.text("let"),
  Doc.align(Doc.vcat(signatures.map(prettySignature)))
])

assert.strictEqual(
  Doc.render(doc, { style: "pretty" }),
  String.stripMargin(
    `|let empty :: Doc
     |    nest  :: Int -> Doc -> Doc
     |    fillSep
     |          :: [Doc] -> Doc`
  )
)
```

**Signature**

```ts
declare const fillBreak: { (w: number): <A>(self: Doc<A>) => Doc<A>; <A>(self: Doc<A>, w: number): Doc<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/printer/src/Doc.ts#L2012)

Since v1.0.0