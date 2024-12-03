# runtime

Capture a Runtime and use it to fork Effect's, adding the forked fibers to the FiberMap.

To import and use `runtime` from the "FiberMap" module:

```ts
import * as FiberMap from "effect/FiberMap"
// Can be accessed like this
FiberMap.runtime
```

**Example**

```ts
import { Context, Effect, FiberMap } from "effect"

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
  const map = yield* _(FiberMap.make<string>())
  const run = yield* _(FiberMap.runtime(map)<Users>())

  // run some effects and add the fibers to the map
  run(
    "effect-a",
    Effect.andThen(Users, (_) => _.getAll)
  )
  run(
    "effect-b",
    Effect.andThen(Users, (_) => _.getAll)
  )
}).pipe(
  Effect.scoped // The fibers will be interrupted when the scope is closed
)
```

**Signature**

```ts
export declare const runtime: <K, A, E>(
  self: FiberMap<K, A, E>
) => <R = never>() => Effect.Effect<
  <XE extends E, XA extends A>(
    key: K,
    effect: Effect.Effect<XA, XE, R>,
    options?:
      | (Runtime.RunForkOptions & {
          readonly onlyIfMissing?: boolean | undefined
          readonly propagateInterruption?: boolean | undefined
        })
      | undefined
  ) => Fiber.RuntimeFiber<XA, XE>,
  never,
  R
>
```
