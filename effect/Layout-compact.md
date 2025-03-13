Package: `@effect/printer`<br />
Module: `Layout`<br />

## Layout.compact

A layout algorithm which will lay out a document without adding any
indentation and without preserving annotations.

Since no pretty-printing is involved, this layout algorithm is very fast. The
resulting output contains fewer characters than a pretty-printed version and
can be used for output that is read by other programs.

**Example**

```ts
import * as assert from "node:assert"
import * as Doc from "@effect/printer/Doc"
import { pipe } from "effect/Function"
import * as String from "effect/String"

const doc = pipe(
  Doc.vsep([
    Doc.text("lorem"),
    Doc.text("ipsum"),
    pipe(
      Doc.vsep([Doc.text("dolor"), Doc.text("sit")]),
      Doc.hang(4)
    )
  ]),
  Doc.hang(4)
)

assert.strictEqual(
  Doc.render(doc, { style: "pretty" }),
  String.stripMargin(
    `|lorem
     |    ipsum
     |    dolor
     |        sit`
  )
)

assert.strictEqual(
  Doc.render(doc, { style: "compact" }),
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
declare const compact: <A>(self: Doc<A>) => DocStream<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/printer/src/Layout.ts#L137)

Since v1.0.0