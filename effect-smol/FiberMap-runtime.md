Package: `effect`<br />
Module: `FiberMap`<br />

## FiberMap.runtime

Capture a Runtime and use it to fork Effect's, adding the forked fibers to the FiberMap.

**Example**

```ts
import { Effect, FiberMap, Context } from "effect"

interface Users {
  readonly _: unique symbol
}
const Users = Context.Service<Users, {
  getAll: Effect.Effect<Array<unknown>>
}>("Users")

Effect.gen(function*() {
  const map = yield* FiberMap.make<string>()
  const run = yield* FiberMap.runtime(map)<Users>()

  // run some effects and add the fibers to the map
  run("effect-a", Effect.andThen(Users, (_) => _.getAll))
  run("effect-b", Effect.andThen(Users, (_) => _.getAll))
}).pipe(
  Effect.scoped // The fibers will be interrupted when the scope is closed
)
```

**Signature**

```ts
declare const runtime: <K, A, E>(self: FiberMap<K, A, E>) => <R = never>() => Effect.Effect<(<XE extends E, XA extends A>(key: K, effect: Effect.Effect<XA, XE, R>, options?: (Effect.RunOptions & { readonly onlyIfMissing?: boolean | undefined; readonly propagateInterruption?: boolean | undefined; }) | undefined) => Fiber.Fiber<XA, XE>), never, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/FiberMap.ts#L729)

Since v2.0.0