Package: `effect`<br />
Module: `BigInt`<br />

## BigInt.remainder

Returns the JavaScript remainder of dividing one `bigint` by another.

**When to use**

Use when you want native remainder semantics, including signed remainders and
a thrown division-by-zero error.

**Gotchas**

Throws a `RangeError` when the divisor is `0n`.

**Example** (Calculating remainders)

```ts
import { BigInt } from "effect"

BigInt.remainder(10n, 3n) // 1n

BigInt.remainder(15n, 4n) // 3n
```

**See**

- `divide` for quotient calculation with division-by-zero represented as `Option.none`

**Signature**

```ts
declare const remainder: { (divisor: bigint): (self: bigint) => bigint; (self: bigint, divisor: bigint): bigint; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigInt.ts#L951)

Since v4.0.0