Package: `effect`<br />
Module: `Deferred`<br />

## Deferred.interrupt

Completes the `Deferred` with interruption. This will interrupt all fibers
waiting on the value of the `Deferred` with the `FiberId` of the fiber
calling this method.

**Example**

```ts
import { Deferred, Effect } from "effect"

const program = Effect.gen(function*() {
  const deferred = yield* Deferred.make<number>()
  const success = yield* Deferred.interrupt(deferred)
  console.log(success) // true
})
```

**Signature**

```ts
declare const interrupt: <A, E>(self: Deferred<A, E>) => Effect<boolean>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Deferred.ts#L514)

Since v2.0.0