Package: `effect`<br />
Module: `Number`<br />

## Number.multiply

Provides a multiplication operation on `number`s.

**When to use**

Use to multiply two numbers.

**Example** (Multiplying numbers)

```ts
import { Number } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(Number.multiply(2, 3), 6)
```

**See**

- `multiplyAll` for multiplying an iterable of numbers

**Signature**

```ts
declare const multiply: { (that: number): (self: number) => number; (self: number, that: number): number; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Number.ts#L119)

Since v2.0.0