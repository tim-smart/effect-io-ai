## words

Splits a string of words into individual `Text` documents using the
specified `char` to split on (defaults to `" "`).

**Example**

```ts
import * as assert from "node:assert"
import * as Doc from "@effect/printer/Doc"

const doc = Doc.tupled(Doc.words("lorem ipsum dolor"))

assert.strictEqual(
  Doc.render(doc, { style: "pretty" }),
  "(lorem, ipsum, dolor)"
)
```

**Signature**

```ts
declare const words: (s: string, char?: string) => ReadonlyArray<Doc<never>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/printer/src/Doc.ts#L2354)

Since v1.0.0