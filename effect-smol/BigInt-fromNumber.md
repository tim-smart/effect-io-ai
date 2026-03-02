Package: `effect`<br />
Module: `BigInt`<br />

## BigInt.fromNumber

Converts a number to a `bigint`.

If the number is outside the safe integer range for JavaScript
(`Number.MAX_SAFE_INTEGER` and `Number.MIN_SAFE_INTEGER`) or if the number is
not a valid `bigint`, it returns `undefined`.

**Example**

```ts
import { BigInt } from "effect"

BigInt.fromNumber(42) // 42n

BigInt.fromNumber(Number.MAX_SAFE_INTEGER + 1) // undefined
BigInt.fromNumber(Number.MIN_SAFE_INTEGER - 1) // undefined
```

**Signature**

```ts
declare const fromNumber: (n: number) => bigint | undefined
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigInt.ts#L674)

Since v2.4.12