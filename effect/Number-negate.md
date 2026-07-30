Package: `effect`<br />
Module: `Number`<br />

## Number.negate

Returns the additive inverse of a number, effectively negating it.

**Example**

```ts
import * as assert from "node:assert/strict"
import { pipe } from "effect"
import * as Number from "effect/Number"

assert.equal(
  Number.negate(5), //
  -5
)

assert.equal(
  Number.negate(-5), //
  5
)

assert.equal(
  Number.negate(0), //
  0
)
```

**Signature**

```ts
declare const negate: (n: number) => number
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Number.ts#L194)

Since v3.14.6