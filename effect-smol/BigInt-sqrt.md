Package: `effect`<br />
Module: `BigInt`<br />

## BigInt.sqrt

Determines the square root of a given `bigint` safely. Returns `undefined` if
the given `bigint` is negative.

**Example**

```ts
import { BigInt } from "effect"

BigInt.sqrt(4n) // 2n
BigInt.sqrt(9n) // 3n
BigInt.sqrt(16n) // 4n
BigInt.sqrt(-1n) // undefined
```

**Signature**

```ts
declare const sqrt: (n: bigint) => bigint | undefined
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigInt.ts#L552)

Since v2.0.0