Package: `effect`<br />
Module: `BigInt`<br />

## BigInt.toNumber

Converts a `bigint` to a `number` safely.

**When to use**

Use to convert a `bigint` to a JavaScript number only when it is a safe
integer.

**Details**

If the `bigint` is outside the safe integer range for JavaScript (`Number.MAX_SAFE_INTEGER`
and `Number.MIN_SAFE_INTEGER`), it returns `Option.none()`.

**Example** (Converting bigints to numbers)

```ts
import { BigInt as BI } from "effect"

BI.toNumber(42n) // Option.some(42)
BI.toNumber(BigInt(Number.MAX_SAFE_INTEGER) + 1n) // Option.none()
BI.toNumber(BigInt(Number.MIN_SAFE_INTEGER) - 1n) // Option.none()
```

**See**

- `fromNumber` for converting a safe integer number to `bigint`

**Signature**

```ts
declare const toNumber: (b: bigint) => Option.Option<number>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/BigInt.ts#L838)

Since v2.0.0