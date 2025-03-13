Package: `effect`<br />
Module: `FiberHandle`<br />

## FiberHandle.runtime

Capture a Runtime and use it to fork Effect's, adding the forked fibers to the FiberHandle.

**Example**

```ts
import { Context, Effect, FiberHandle } from "effect"

interface Users {
  readonly _: unique symbol
}
const Users = Context.GenericTag<Users, {
   getAll: Effect.Effect<Array<unknown>>
}>("Users")

Effect.gen(function*() {
  const handle = yield* FiberHandle.make()
  const run = yield* FiberHandle.runtime(handle)<Users>()

  // run an effect and set the fiber in the handle
  run(Effect.andThen(Users, _ => _.getAll))

  // this will interrupt the previous fiber
  run(Effect.andThen(Users, _ => _.getAll))
}).pipe(
  Effect.scoped // The fiber will be interrupted when the scope is closed
)
```

**Signature**

```ts
declare const runtime: <A, E>(self: FiberHandle<A, E>) => <R = never>() => Effect.Effect<(<XE extends E, XA extends A>(effect: Effect.Effect<XA, XE, R>, options?: (Runtime.RunForkOptions & { readonly onlyIfMissing?: boolean | undefined; readonly propagateInterruption?: boolean | undefined; }) | undefined) => Fiber.RuntimeFiber<XA, XE>), never, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/FiberHandle.ts#L422)

Since v2.0.0