Package: `effect`<br />
Module: `BigInt`<br />

## BigInt.BigInt

Reference to the global BigInt constructor.

**Example** (Constructing bigints)

```ts
import { BigInt } from "effect"

const bigInt = BigInt.BigInt(123)
console.log(bigInt) // 123n

const fromString = BigInt.BigInt("456")
console.log(fromString) // 456n
```

**Signature**

```ts
declare const BigInt: BigIntConstructor
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigInt.ts#L35)

Since v4.0.0