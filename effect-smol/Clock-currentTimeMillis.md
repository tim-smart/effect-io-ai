Package: `effect`<br />
Module: `Clock`<br />

## Clock.currentTimeMillis

Returns an Effect that succeeds with the current time in milliseconds.

**When to use**

Use to read wall-clock time from the active Clock service with millisecond
precision.

**Example** (Reading milliseconds)

```ts
import { Clock, Effect } from "effect"

const program = Effect.gen(function*() {
  const currentTime = yield* Clock.currentTimeMillis
  console.log(`Current time: ${currentTime}ms`)
  return currentTime
})
```

**See**

- `currentTimeNanos` for nanosecond precision
- `clockWith` for accessing the full Clock service

**Signature**

```ts
declare const currentTimeMillis: Effect<number, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Clock.ts#L221)

Since v2.0.0