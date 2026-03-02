Package: `effect`<br />
Module: `BigInt`<br />

## BigInt.toNumber

Converts a `bigint` to a `number`.

If the `bigint` is outside the safe integer range for JavaScript (`Number.MAX_SAFE_INTEGER`
and `Number.MIN_SAFE_INTEGER`), it returns `undefined`

**Example**

```ts
import { BigInt as BI } from "effect"

BI.toNumber(42n) // 42
BI.toNumber(BigInt(Number.MAX_SAFE_INTEGER) + 1n) // undefined
BI.toNumber(BigInt(Number.MIN_SAFE_INTEGER) - 1n) // undefined
```

**Signature**

```ts
declare const toNumber: (b: bigint) => number | undefined
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigInt.ts#L619)

Since v2.0.0