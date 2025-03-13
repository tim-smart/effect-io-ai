Package: `effect`<br />
Module: `FiberSet`<br />

## FiberSet.join

Join all fibers in the FiberSet. If any of the Fiber's in the set terminate with a failure,
the returned Effect will terminate with the first failure that occurred.

**Example**

```ts
import { Effect, FiberSet } from "effect";

Effect.gen(function* (_) {
  const set = yield* _(FiberSet.make());
  yield* _(FiberSet.add(set, Effect.runFork(Effect.fail("error"))));

  // parent fiber will fail with "error"
  yield* _(FiberSet.join(set));
});
```

**Signature**

```ts
declare const join: <A, E>(self: FiberSet<A, E>) => Effect.Effect<void, E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/FiberSet.ts#L464)

Since v2.0.0