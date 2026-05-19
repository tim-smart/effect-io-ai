Package: `effect`<br />
Module: `Number`<br />

## Number.increment

Returns the result of adding `1` to a given number.

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Number.ts#L180)

Since v2.0.0