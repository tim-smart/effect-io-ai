Package: `effect`<br />
Module: `Number`<br />

## Number.increment

Returns the result of adding `1` to a given number.

**When to use**

Use to increment a numeric counter by one.

**Example** (Incrementing a number)

```ts
import { Number } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(Number.increment(2), 3)
```

**Signature**

```ts
declare const increment: (n: number) => number
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Number.ts#L233)

Since v2.0.0