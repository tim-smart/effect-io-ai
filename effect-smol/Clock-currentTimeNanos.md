Package: `effect`<br />
Module: `Clock`<br />

## Clock.currentTimeNanos

Returns an Effect that succeeds with the current time in nanoseconds.

**Example**

```ts
import { Clock, Effect } from "effect"

const program = Effect.gen(function*() {
  const currentTime = yield* Clock.currentTimeNanos
  console.log(`Current time: ${currentTime}ns`)
  return currentTime
})
```

**Signature**

```ts
declare const currentTimeNanos: Effect<bigint, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Clock.ts#L182)

Since v2.0.0