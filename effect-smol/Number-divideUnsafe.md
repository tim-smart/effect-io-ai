Package: `effect`<br />
Module: `Number`<br />

## Number.divideUnsafe

Provides an unsafe division operation on `number`s.

Throws a `RangeError` if the divisor is `0`.

**Example**

```ts
import { Number } from "effect"

Number.divideUnsafe(6, 3) // 2
Number.divideUnsafe(6, 0) // throws RangeError("Division by zero")
```

**Signature**

```ts
declare const divideUnsafe: { (that: number): (self: number) => number; (self: number, that: number): number; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Number.ts#L150)

Since v2.0.0