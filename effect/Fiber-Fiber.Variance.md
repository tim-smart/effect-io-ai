Package: `effect`<br />
Module: `Fiber`<br />

## Fiber.Fiber.Variance

Variance encoding for the Fiber type, specifying covariance in both the
success type `A` and the error type `E`.

**When to use**

Use to carry the success and error type parameters for `Fiber` in Effect's
type machinery.

**Example** (Upcasting fibers safely)

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

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Fiber.ts#L153)

Since v2.0.0