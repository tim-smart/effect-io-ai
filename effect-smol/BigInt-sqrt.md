Package: `effect`<br />
Module: `BigInt`<br />

## BigInt.sqrt

Determines the square root of a given `bigint` safely. Returns `Option.none()` if
the given `bigint` is negative.

**Example**

```ts
import { BigInt } from "effect"

BigInt.sqrt(4n) // Option.some(2n)
BigInt.sqrt(9n) // Option.some(3n)
BigInt.sqrt(16n) // Option.some(4n)
BigInt.sqrt(-1n) // Option.none()
```

**Signature**

```ts
declare const sqrt: (n: bigint) => Option.Option<bigint>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigInt.ts#L555)

Since v2.0.0