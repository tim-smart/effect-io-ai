Package: `effect`<br />
Module: `Clock`<br />

## Clock.clockWith

Accesses the current Clock service and uses it to run the provided function.

**Example**

```ts
import { Clock, Effect } from "effect"

const program = Clock.clockWith((clock) =>
  Effect.sync(() => {
    const currentTime = clock.currentTimeMillisUnsafe()
    console.log(`Current time: ${currentTime}`)
    return currentTime
  })
)
```

**Signature**

```ts
declare const clockWith: <A, E, R>(f: (clock: Clock) => Effect<A, E, R>) => Effect<A, E, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Clock.ts#L144)

Since v2.0.0