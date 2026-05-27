Package: `effect`<br />
Module: `Number`<br />

## Number.divideUnsafe

Provides an unsafe division operation on `number`s that throws a `RangeError` if the divisor is `0`.

**When to use**

Use when the divisor is known to be non-zero and division by zero should be a
thrown exception.

**Example** (Dividing numbers unsafely)

```ts
import { Number } from "effect"

console.log(Number.divideUnsafe(6, 3)) // 2

// Passing 0 as the divisor throws a RangeError("Division by zero").
```

**See**

- `divide` for division that returns `Option.none` when the divisor is zero

**Signature**

```ts
declare const divideUnsafe: { (that: number): (self: number) => number; (self: number, that: number): number; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Number.ts#L252)

Since v4.0.0