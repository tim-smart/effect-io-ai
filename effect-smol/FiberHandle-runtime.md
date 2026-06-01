Package: `effect`<br />
Module: `FiberHandle`<br />

## FiberHandle.runtime

Captures the current runtime and returns a function for forking effects into
an existing `FiberHandle`.

**Details**

Each call returns the forked fiber, stores it in the handle, and interrupts
the previous fiber unless `onlyIfMissing` is set.

**Example** (Capturing a runtime for fiber handles)

```ts
import { Context, Effect, FiberHandle } from "effect"

interface Users {
  readonly _: unique symbol
}
const Users = Context.Service<Users, {
  getAll: Effect.Effect<Array<unknown>>
}>("Users")

Effect.gen(function*() {
  const handle = yield* FiberHandle.make()
  const run = yield* FiberHandle.runtime(handle)<Users>()

  // run an effect and set the fiber in the handle
  run(Effect.andThen(Users, (_) => _.getAll))

  // this will interrupt the previous fiber
  run(Effect.andThen(Users, (_) => _.getAll))
}).pipe(
  Effect.scoped // The fiber will be interrupted when the scope is closed
)
```

**Signature**

```ts
declare const runtime: <A, E>(self: FiberHandle<A, E>) => <R = never>() => Effect.Effect<(<XE extends E, XA extends A>(effect: Effect.Effect<XA, XE, R>, options?: { readonly signal?: AbortSignal | undefined; readonly scheduler?: Scheduler | undefined; readonly onlyIfMissing?: boolean | undefined; readonly propagateInterruption?: boolean | undefined; } | undefined) => Fiber.Fiber<XA, XE>), never, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/FiberHandle.ts#L671)

Since v2.0.0