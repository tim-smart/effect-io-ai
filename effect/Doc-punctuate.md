# punctuate

The `punctuate` combinator appends the `punctuator` document to all but the
last document in a collection of documents. The separators are places after
the document entries, which can be observed if the result is oriented
vertically.

To import and use `punctuate` from the "Doc" module:

```ts
import * as Doc from "@effect/printer/Doc"
// Can be accessed like this
Doc.punctuate
```

**Example**

```ts
import * as Doc from "@effect/printer/Doc"
import * as Render from "@effect/printer/Render"
import { pipe } from "effect/Function"
import * as String from "effect/String"

const docs = pipe(Doc.words("lorem ipsum dolor sit amet"), Doc.punctuate(Doc.comma))

assert.strictEqual(Render.prettyDefault(Doc.hsep(docs)), "lorem, ipsum, dolor, sit, amet")

// The separators are put at the end of the entries, which can be better
// visualzied if the documents are rendered vertically
assert.strictEqual(
  Render.prettyDefault(Doc.vsep(docs)),
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
export declare const punctuate: {
  <A, B>(punctuator: Doc<A>): (docs: Iterable<Doc<B>>) => readonly Doc<A | B>[]
  <A, B>(docs: Iterable<Doc<B>>, punctuator: Doc<A>): readonly Doc<A | B>[]
}
```
