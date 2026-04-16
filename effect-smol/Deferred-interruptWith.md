Package: `effect`<br />
Module: `Deferred`<br />

## Deferred.interruptWith

Completes the `Deferred` with interruption. This will interrupt all fibers
waiting on the value of the `Deferred` with the specified `FiberId`.

**Example**

```ts
import { Deferred, Effect } from "effect"

const program = Effect.gen(function*() {
  const deferred = yield* Deferred.make<number>()
  const success = yield* Deferred.interruptWith(deferred, 42)
  console.log(success) // true
})
```

**Signature**

```ts
declare const interruptWith: { (fiberId: number): <A, E>(self: Deferred<A, E>) => Effect<boolean>; <A, E>(self: Deferred<A, E>, fiberId: number): Effect<boolean>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Deferred.ts#L535)

Since v2.0.0