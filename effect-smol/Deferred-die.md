Package: `effect`<br />
Module: `Deferred`<br />

## Deferred.die

Kills the `Deferred` with the specified defect, which will be propagated to
all fibers waiting on the value of the `Deferred`.

**Example**

```ts
import { Deferred, Effect } from "effect"

const program = Effect.gen(function*() {
  const deferred = yield* Deferred.make<number>()
  const success = yield* Deferred.die(
    deferred,
    new Error("Something went wrong")
  )
  console.log(success) // true
})
```

**Signature**

```ts
declare const die: { (defect: unknown): <A, E>(self: Deferred<A, E>) => Effect<boolean>; <A, E>(self: Deferred<A, E>, defect: unknown): Effect<boolean>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Deferred.ts#L453)

Since v2.0.0