Package: `effect`<br />
Module: `BigInt`<br />

## BigInt.remainder

Returns the JavaScript remainder of dividing one `bigint` by another.

**Details**

The result follows JavaScript `%` semantics, including the sign of the
dividend.

**Gotchas**

Throws a `RangeError` when the divisor is `0n`.

**Example** (Calculating remainders)

```ts
import { BigInt } from "effect"

BigInt.remainder(10n, 3n) // 1n

BigInt.remainder(15n, 4n) // 3n
```

**Signature**

```ts
declare const remainder: { (divisor: bigint): (self: bigint) => bigint; (self: bigint, divisor: bigint): bigint; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigInt.ts#L768)

Since v4.0.0