# compact

A layout algorithm which will lay out a document without adding any
indentation and without preserving annotations.

Since no pretty-printing is involved, this layout algorithm is very fast. The
resulting output contains fewer characters than a pretty-printed version and
can be used for output that is read by other programs.

To import and use `compact` from the "Layout" module:

```ts
import * as Layout from "@effect/printer/Layout"
// Can be accessed like this
Layout.compact
```

**Example**

```ts
import * as Doc from "@effect/printer/Doc"
import * as Render from "@effect/printer/Render"
import { pipe } from "effect/Function"
import * as String from "effect/String"

const doc = pipe(
  Doc.vsep([Doc.text("lorem"), Doc.text("ipsum"), pipe(Doc.vsep([Doc.text("dolor"), Doc.text("sit")]), Doc.hang(4))]),
  Doc.hang(4)
)

assert.strictEqual(
  Render.prettyDefault(doc),
  String.stripMargin(
    `|lorem
     |    ipsum
     |    dolor
     |        sit`
  )
)

assert.strictEqual(
  Render.compact(doc),
  String.stripMargin(
    `|lorem
     |ipsum
     |dolor
     |sit`
  )
)
```

**Signature**

```ts
export declare const compact: <A>(self: Doc<A>) => DocStream<A>
```
