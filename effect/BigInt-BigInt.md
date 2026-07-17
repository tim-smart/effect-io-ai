Package: `effect`<br />
Module: `BigInt`<br />

## BigInt.BigInt

Exposes the global bigint constructor for JavaScript bigint coercion.

**When to use**

Use to access native JavaScript bigint constructor coercion from the Effect
module namespace.

**Gotchas**

This follows native `BigInt` coercion rules. It throws for invalid strings or
non-integral numbers, and whitespace-only strings coerce to `0n`.

**See**

- `fromString` for parsing strings into an `Option`
- `fromNumber` for converting safe integers into an `Option`

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

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/BigInt.ts#L52)

Since v4.0.0