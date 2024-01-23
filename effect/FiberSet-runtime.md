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
const Users = Context.Tag<
  Users,
  {
    getAll: Effect.Effect<never, never, Array<unknown>>
  }
>()

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
export declare const runtime: <E, A>(
  self: FiberSet<E, A>
) => <R>() => Effect.Effect<
  R,
  never,
  <XE extends E, XA extends A>(
    effect: Effect.Effect<R, XE, XA>,
    options?: Runtime.RunForkOptions | undefined
  ) => Fiber.RuntimeFiber<XE, XA>
>
```
