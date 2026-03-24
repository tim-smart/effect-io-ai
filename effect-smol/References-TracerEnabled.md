Package: `effect`<br />
Module: `References`<br />

## References.TracerEnabled

Reference for controlling whether tracing is enabled globally. When set to false,
spans will not be registered with the tracer and tracing overhead is minimized.

**Example**

```ts
import { Effect, References } from "effect"

const tracingControl = Effect.gen(function*() {
  // Check if tracing is enabled (default is true)
  const current = yield* References.TracerEnabled
  console.log(current) // true

  // Disable tracing globally
  yield* Effect.provideService(
    Effect.gen(function*() {
      const isEnabled = yield* References.TracerEnabled
      console.log(isEnabled) // false

      // Spans will not be traced in this context
      yield* Effect.log("This will not be traced")
    }),
    References.TracerEnabled,
    false
  )

  // Re-enable tracing
  yield* Effect.provideService(
    Effect.gen(function*() {
      const isEnabled = yield* References.TracerEnabled
      console.log(isEnabled) // true

      // All subsequent spans will be traced
      yield* Effect.log("This will be traced")
    }),
    References.TracerEnabled,
    true
  )
})
```

**Signature**

```ts
declare const TracerEnabled: ServiceMap.Reference<boolean>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/References.ts#L356)

Since v4.0.0