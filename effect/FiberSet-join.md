Package: `effect`<br />
Module: `FiberSet`<br />

## FiberSet.join

Joins all fibers in the FiberSet. If any fiber in the set terminates with a failure,
the returned Effect will terminate with the first failure that occurred.

**Example** (Joining failing fibers)

```ts
import { Effect, FiberSet } from "effect"

Effect.gen(function*() {
  const set = yield* FiberSet.make()
  yield* FiberSet.add(set, Effect.runFork(Effect.fail("error")))

  // parent fiber will fail with "error"
  yield* FiberSet.join(set)
})
```

**Signature**

```ts
declare const join: <A, E>(self: FiberSet<A, E>) => Effect.Effect<void, E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/FiberSet.ts#L680)

Since v2.0.0