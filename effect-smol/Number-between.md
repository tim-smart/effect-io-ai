Package: `effect`<br />
Module: `Number`<br />

## Number.between

Checks whether a `number` is between a `minimum` and `maximum` value (inclusive).

**When to use**

Use to test whether a number falls inside an inclusive range.

**Example** (Checking inclusive ranges)

```ts
import { Number } from "effect"
import * as assert from "node:assert"

const between = Number.between({ minimum: 0, maximum: 5 })

assert.deepStrictEqual(between(3), true)
assert.deepStrictEqual(between(-1), false)
assert.deepStrictEqual(between(6), false)
```

**See**

- `clamp` for forcing a number into an inclusive range

**Signature**

```ts
declare const between: { (options: { minimum: number; maximum: number; }): (self: number) => boolean; (self: number, options: { minimum: number; maximum: number; }): boolean; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Number.ts#L431)

Since v2.0.0