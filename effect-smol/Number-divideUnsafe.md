Package: `effect`<br />
Module: `Number`<br />

## Number.divideUnsafe

Provides an unsafe division operation on `number`s.

Throws a `RangeError` if the divisor is `0`.

**Example** (Dividing numbers unsafely)

```ts
import { Number } from "effect"

console.log(Number.divideUnsafe(6, 3)) // 2

// Passing 0 as the divisor throws a RangeError("Division by zero").
```

**Signature**

```ts
declare const divideUnsafe: { (that: number): (self: number) => number; (self: number, that: number): number; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Number.ts#L156)

Since v2.0.0