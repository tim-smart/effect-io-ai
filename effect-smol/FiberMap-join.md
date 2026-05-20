Package: `effect`<br />
Module: `FiberMap`<br />

## FiberMap.join

Waits for the `FiberMap` to fail or close.

**Details**

The returned Effect fails with the first managed fiber failure that is not
ignored by the map's interruption rules. Normal successful completion
removes fibers from the map; use `awaitEmpty` to wait until the map has no
fibers.

**Example** (Joining failing fibers)

```ts
import { Effect, FiberMap } from "effect"

Effect.gen(function*() {
  const map = yield* FiberMap.make()
  yield* FiberMap.set(map, "a", Effect.runFork(Effect.fail("error")))

  // parent fiber will fail with "error"
  yield* FiberMap.join(map)
})
```

**Signature**

```ts
declare const join: <K, A, E>(self: FiberMap<K, A, E>) => Effect.Effect<void, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/FiberMap.ts#L1005)

Since v2.0.0