Package: `@effect/printer`<br />
Module: `Doc`<br />

## Doc.spaces

The `spaces` combinator lays out a document containing `n` spaces. Negative
values for `n` count as `0` spaces.

**Example**

```ts
import * as assert from "node:assert"
import * as Doc from "@effect/printer/Doc"

const doc = Doc.squareBracketed(Doc.doubleQuoted(Doc.spaces(5)))

assert.strictEqual(
  Doc.render(doc, { style: "pretty" }),
  "[\"     \"]"
)
```

**Signature**

```ts
declare const spaces: (n: number) => Doc<never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/printer/src/Doc.ts#L2326)

Since v1.0.0