Package: `effect`<br />
Module: `References`<br />

## References.TracerTimingEnabled

Reference for controlling whether trace timing is enabled globally. When set
to false, spans will not contain timing information (trace time will always
be set to zero).

**Example**

```ts
import { Effect, References } from "effect"

const tracingControl = Effect.gen(function*() {
  // Check if trace timing is enabled (default is true)
  const current = yield* References.TracerTimingEnabled
  console.log(current) // true

  // Disable trace timing globally
  yield* Effect.provideService(
    Effect.gen(function*() {
      // Spans will not having timing information in this context
      const isEnabled = yield* References.TracerTimingEnabled
      console.log(isEnabled) // false
    }),
    References.TracerTimingEnabled,
    false
  )

  // Re-enable trace timing
  yield* Effect.provideService(
    Effect.gen(function*() {
      // Spans will have timing information in this context
      const isEnabled = yield* References.TracerTimingEnabled
      console.log(isEnabled) // true
    }),
    References.TracerTimingEnabled,
    true
  )
})
```

**Signature**

```ts
declare const TracerTimingEnabled: Context.Reference<boolean>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/References.ts#L514)

Since v4.0.0