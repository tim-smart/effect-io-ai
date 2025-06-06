Package: `effect`<br />
Module: `Number`<br />

## Number.between

Checks if a `number` is between a `minimum` and `maximum` value (inclusive).

**Example**

```ts
import * as assert from "node:assert/strict"
import { Number } from "effect"

const between = Number.between({ minimum: 0, maximum: 5 })

assert.equal(between(3), true)
assert.equal(between(-1), false)
assert.equal(between(6), false)
```

**Signature**

```ts
declare const between: { (options: { minimum: number; maximum: number; }): (self: number) => boolean; (self: number, options: { minimum: number; maximum: number; }): boolean; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Number.ts#L854)

Since v2.0.0