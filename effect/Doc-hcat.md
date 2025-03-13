Package: `@effect/printer`<br />
Module: `Doc`<br />

## Doc.hcat

The `hcat` combinator concatenates all documents in a collection horizontally
without any spacing.

**Example**

```ts
import * as assert from "node:assert"
import * as Doc from "@effect/printer/Doc"
import * as String from "effect/String"

const doc: Doc.Doc<never> = Doc.hcat(Doc.words("lorem ipsum dolor"))

assert.strictEqual(
  Doc.render(doc, { style: "pretty" }),
  "loremipsumdolor"
)
```

**Signature**

```ts
declare const hcat: <A>(docs: Iterable<Doc<A>>) => Doc<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/printer/src/Doc.ts#L1176)

Since v1.0.0