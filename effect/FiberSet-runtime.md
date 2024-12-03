# runtime

Capture a Runtime and use it to fork Effect's, adding the forked fibers to the FiberSet.

To import and use `runtime` from the "FiberSet" module:

```ts
import * as FiberSet from "effect/FiberSet"
// Can be accessed like this
FiberSet.runtime
```

**Example**

```ts
import { Context, Effect, FiberSet } from "effect"

interface Users {
  readonly _: unique symbol
}
const Users = Context.GenericTag<
  Users,
  {
    getAll: Effect.Effect<Array<unknown>>
  }
>("Users")

Effect.gen(function* (_) {
  const set = yield* _(FiberSet.make())
  const run = yield* _(FiberSet.runtime(set)<Users>())

  // run some effects and add the fibers to the set
  run(Effect.andThen(Users, (_) => _.getAll))
}).pipe(
  Effect.scoped // The fibers will be interrupted when the scope is closed
)
```

**Signature**

```ts
export declare const runtime: <A, E>(
  self: FiberSet<A, E>
) => <R = never>() => Effect.Effect<
  <XE extends E, XA extends A>(
    effect: Effect.Effect<XA, XE, R>,
    options?: (Runtime.RunForkOptions & { readonly propagateInterruption?: boolean | undefined }) | undefined
  ) => Fiber.RuntimeFiber<XA, XE>,
  never,
  R
>
```
