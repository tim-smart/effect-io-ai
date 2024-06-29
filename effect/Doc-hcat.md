# hcat

The `hcat` combinator concatenates all documents in a collection horizontally
without any spacing.

To import and use `hcat` from the "Doc" module:

```ts
import * as Doc from "@effect/printer/Doc"
// Can be accessed like this
Doc.hcat
```

**Example**

```ts
import * as Doc from "@effect/printer/Doc"
import * as String from "effect/String"

const doc: Doc.Doc<never> = Doc.hcat(Doc.words("lorem ipsum dolor"))

assert.strictEqual(Doc.render(doc, { style: "pretty" }), "loremipsumdolor")
```

**Signature**

```ts
export declare const hcat: <A>(docs: Iterable<Doc<A>>) => Doc<A>
```
