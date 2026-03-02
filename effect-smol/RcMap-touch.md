Package: `effect`<br />
Module: `RcMap`<br />

## RcMap.touch

Extends the idle time for a resource in the RcMap. If the RcMap has an
`idleTimeToLive` configured, calling `touch` will reset the expiration
timer for the specified key.

**Example**

```ts
import { Effect, RcMap } from "effect"

Effect.gen(function*() {
  const map = yield* RcMap.make({
    lookup: (key: string) =>
      Effect.acquireRelease(
        Effect.succeed(`Resource: ${key}`),
        () => Effect.log(`Released ${key}`)
      ),
    idleTimeToLive: "10 seconds"
  })

  // Get a resource
  yield* RcMap.get(map, "session")

  // Touch the resource to extend its idle time
  // This resets the 10-second expiration timer
  yield* RcMap.touch(map, "session")

  // The resource will now live for another 10 seconds
  // from the time it was touched
}).pipe(Effect.scoped)
```

**Signature**

```ts
declare const touch: { <K>(key: K): <A, E>(self: RcMap<K, A, E>) => Effect.Effect<void>; <K, A, E>(self: RcMap<K, A, E>, key: K): Effect.Effect<void>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RcMap.ts#L550)

Since v3.5.0