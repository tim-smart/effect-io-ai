# join

If any of the Fiber's in the handle terminate with a failure,
the returned Effect will terminate with the first failure that occurred.

To import and use `join` from the "FiberHandle" module:

ts
import \* as FiberHandle from "effect/FiberHandle"
// Can be accessed like this
FiberHandle.join
undefined

**Example**

```ts
import { Effect, FiberHandle } from "effect"

Effect.gen(function* (_) {
  const handle = yield* _(FiberHandle.make())
  yield* _(FiberHandle.set(handle, Effect.runFork(Effect.fail("error"))))

  // parent fiber will fail with "error"
  yield* _(FiberHandle.join(handle))
})
```

**Signature**

```ts
export declare const join: <A, E>(self: FiberHandle<A, E>) => Effect.Effect<void, E>
```
