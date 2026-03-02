Package: `effect`<br />
Module: `References`<br />

## References.CurrentConcurrency

Reference for controlling the current concurrency limit. Can be set to "unbounded"
for unlimited concurrency or a specific number to limit concurrent operations.

**Example**

```ts
import { Effect, References } from "effect"

const limitConcurrency = Effect.gen(function*() {
  // Get current setting
  const current = yield* References.CurrentConcurrency
  console.log(current) // "unbounded" (default)

  // Run with limited concurrency
  yield* Effect.provideService(
    Effect.gen(function*() {
      const limited = yield* References.CurrentConcurrency
      console.log(limited) // 10
    }),
    References.CurrentConcurrency,
    10
  )

  // Run with unlimited concurrency
  yield* Effect.provideService(
    Effect.gen(function*() {
      const unlimited = yield* References.CurrentConcurrency
      console.log(unlimited) // "unbounded"
    }),
    References.CurrentConcurrency,
    "unbounded"
  )
})
```

**Signature**

```ts
declare const CurrentConcurrency: ServiceMap.Reference<number | "unbounded">
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/References.ts#L86)

Since v4.0.0