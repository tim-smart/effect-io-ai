Package: `effect`<br />
Module: `BigInt`<br />

## BigInt.remainder

Returns the remainder of dividing the first `bigint` by the second `bigint`.

**Example**

```ts
import { BigInt } from "effect"

BigInt.remainder(10n, 3n) // 1n

BigInt.remainder(15n, 4n) // 3n
```

**Signature**

```ts
declare const remainder: { (divisor: bigint): (self: bigint) => bigint; (self: bigint, divisor: bigint): bigint; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigInt.ts#L705)

Since v4.0.0