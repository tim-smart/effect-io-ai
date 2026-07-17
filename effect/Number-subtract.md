Package: `effect`<br />
Module: `Number`<br />

## Number.subtract

Provides a subtraction operation on `number`s.

**When to use**

Use to subtract one number from another.

**Example** (Subtracting numbers)

```ts
import { Number } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(Number.subtract(2, 3), -1)
```

**Signature**

```ts
declare const subtract: { (that: number): (self: number) => number; (self: number, that: number): number; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Number.ts#L143)

Since v2.0.0