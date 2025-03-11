## punctuate

The `punctuate` combinator appends the `punctuator` document to all but the
last document in a collection of documents. The separators are places after
the document entries, which can be observed if the result is oriented
vertically.

**Example**

```ts
import * as assert from "node:assert"
import * as Doc from "@effect/printer/Doc"
import { pipe } from "effect/Function"
import * as String from "effect/String"

const docs = pipe(
  Doc.words("lorem ipsum dolor sit amet"),
  Doc.punctuate(Doc.comma)
)

assert.strictEqual(
  Doc.render(Doc.hsep(docs), { style: "pretty" }),
  "lorem, ipsum, dolor, sit, amet"
)

// The separators are put at the end of the entries, which can be better
// visualzied if the documents are rendered vertically
assert.strictEqual(
  Doc.render(Doc.vsep(docs), { style: "pretty" }),
  String.stripMargin(
    `|lorem,
     |ipsum,
     |dolor,
     |sit,
     |amet`
  )
)
```

**Signature**

```ts
declare const punctuate: { <A, B>(punctuator: Doc<A>): (docs: Iterable<Doc<B>>) => ReadonlyArray<Doc<A | B>>; <A, B>(docs: Iterable<Doc<B>>, punctuator: Doc<A>): ReadonlyArray<Doc<A | B>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/printer/src/Doc.ts#L2433)

Since v1.0.0