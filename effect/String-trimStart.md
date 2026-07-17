Package: `effect`<br />
Module: `String`<br />

## String.trimStart

Removes whitespace from the start of a string.

**Example** (Trimming leading whitespace)

```ts
import { String } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(String.trimStart(" a "), "a ")
assert.deepStrictEqual(String.trimStart("  hello world"), "hello world")
```

**Signature**

```ts
declare const trimStart: <A extends string>(self: A) => TrimStart<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/String.ts#L332)

Since v2.0.0