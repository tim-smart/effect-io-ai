Package: `effect`<br />
Module: `FiberMap`<br />

## FiberMap.join

Join all fibers in the FiberMap. If any of the Fiber's in the map terminate with a failure,
the returned Effect will terminate with the first failure that occurred.

**Example**

```ts
import { Effect, FiberMap } from "effect";

Effect.gen(function* (_) {
  const map = yield* _(FiberMap.make());
  yield* _(FiberMap.set(map, "a", Effect.runFork(Effect.fail("error"))));

  // parent fiber will fail with "error"
  yield* _(FiberMap.join(map));
});
```

**Signature**

```ts
declare const join: <K, A, E>(self: FiberMap<K, A, E>) => Effect.Effect<void, E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/FiberMap.ts#L638)

Since v2.0.0