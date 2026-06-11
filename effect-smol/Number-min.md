Package: `effect`<br />
Module: `Number`<br />

## Number.min

Returns the minimum between two `number`s.

**When to use**

Use to select the smaller of two numbers.

**Example** (Finding the minimum)

```ts
import { Number } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(Number.min(2, 3), 2)
```

**See**

- `max` for selecting the larger value

**Signature**

```ts
declare const min: { (that: number): (self: number) => number; (self: number, that: number): number; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Number.ts#L505)

Since v2.0.0