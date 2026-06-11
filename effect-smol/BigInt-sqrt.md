Package: `effect`<br />
Module: `BigInt`<br />

## BigInt.sqrt

Computes the integer square root of a `bigint` safely.

**When to use**

Use to compute an integer square root while representing negative input as
`Option.none`.

**Details**

For non-perfect squares, returns the largest `bigint` whose square is less
than or equal to the input. Returns `Option.none()` when the input is
negative.

**Example** (Calculating square roots safely)

```ts
import { BigInt } from "effect"

BigInt.sqrt(4n) // Option.some(2n)
BigInt.sqrt(9n) // Option.some(3n)
BigInt.sqrt(16n) // Option.some(4n)
BigInt.sqrt(-1n) // Option.none()
```

**See**

- `sqrtUnsafe` for square root computation that throws on negative input

**Signature**

```ts
declare const sqrt: (n: bigint) => Option.Option<bigint>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigInt.ts#L743)

Since v2.0.0