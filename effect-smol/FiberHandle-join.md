Package: `effect`<br />
Module: `FiberHandle`<br />

## FiberHandle.join

Waits for the `FiberHandle` to fail or close.

The returned Effect fails with the first managed fiber failure that is not
ignored by the handle's interruption rules. Normal successful completion of
a managed fiber only removes it from the handle; use `awaitEmpty` to wait
for the current fiber to finish.

**Example** (Propagating fiber failures)

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/FiberHandle.ts#L782)

Since v2.0.0