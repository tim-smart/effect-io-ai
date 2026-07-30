Package: `effect`<br />
Module: `Number`<br />

## Number.decrement

Decrements a number by `1`.

**Example**

```ts
import * as assert from "node:assert/strict"
import { decrement } from "effect/Number"

assert.equal(decrement(3), 2)
```

**Signature**

```ts
declare const decrement: (n: number) => number
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Number.ts#L727)

Since v2.0.0