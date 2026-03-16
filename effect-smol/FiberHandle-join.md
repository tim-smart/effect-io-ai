Package: `effect`<br />
Module: `FiberHandle`<br />

## FiberHandle.join

If any of the Fiber's in the handle terminate with a failure,
the returned Effect will terminate with the first failure that occurred.

**Example**

```ts
import { Effect, FiberHandle } from "effect"

Effect.gen(function*() {
  const handle = yield* FiberHandle.make()
  yield* FiberHandle.set(handle, Effect.runFork(Effect.fail("error")))

  // parent fiber will fail with "error"
  yield* FiberHandle.join(handle)
})
```

**Signature**

```ts
declare const join: <A, E>(self: FiberHandle<A, E>) => Effect.Effect<void, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/FiberHandle.ts#L695)

Since v2.0.0