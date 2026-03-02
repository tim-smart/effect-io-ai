Package: `effect`<br />
Module: `Fiber`<br />

## Fiber.Fiber.Variance

Variance encoding for the Fiber type, specifying covariance in both the
success type `A` and the error type `E`.

**Example**

```ts
import type { Fiber } from "effect"

// Variance allows safe subtyping
declare const fiber: Fiber.Fiber<number, Error>
const upcast: Fiber.Fiber<unknown, unknown> = fiber
```

**Signature**

```ts
export interface Variance<out A, out E = never> {
    readonly _A: Covariant<A>
    readonly _E: Covariant<E>
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Fiber.ts#L183)

Since v2.0.0