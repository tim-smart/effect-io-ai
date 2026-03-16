Package: `effect`<br />
Module: `BigInt`<br />

## BigInt.BigInt

Reference to the global BigInt constructor.

**Example**

```ts
import * as BigInt from "effect/BigInt"

const bigInt = BigInt.BigInt(123)
console.log(bigInt) // 123n

const fromString = BigInt.BigInt("456")
console.log(fromString) // 456n
```

**Signature**

```ts
declare const BigInt: BigIntConstructor
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigInt.ts#L34)

Since v4.0.0