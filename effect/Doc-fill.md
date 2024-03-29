# fill

The `fill` combinator first lays out the document `x` and then appends
`space`s until the width of the document is equal to the specified `width`.
If the width of `x` is already larger than the specified `width`, nothing is
appended.

To import and use `fill` from the "Doc" module:

```ts
import * as Doc from "@effect/printer/Doc"
// Can be accessed like this
Doc.fill
```

**Example**

```ts
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
  Doc.hsep([pipe(Doc.text(name), Doc.fill(5)), Doc.text("::"), Doc.text(type)])

const doc = Doc.hsep([Doc.text("let"), Doc.align(Doc.vcat(signatures.map(prettySignature)))])

assert.strictEqual(
  Doc.render(doc, { style: "pretty" }),
  String.stripMargin(
    `|let empty :: Doc
     |    nest  :: Int -> Doc -> Doc
     |    fillSep :: [Doc] -> Doc`
  )
)
```

**Signature**

```ts
export declare const fill: { (w: number): <A>(self: Doc<A>) => Doc<A>; <A>(self: Doc<A>, w: number): Doc<A> }
```
