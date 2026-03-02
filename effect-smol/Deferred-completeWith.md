Package: `effect`<br />
Module: `Deferred`<br />

## Deferred.completeWith

Completes the deferred with the result of the specified effect. If the
deferred has already been completed, the method will produce false.

**Example**

```ts
import { Deferred, Effect } from "effect"

const program = Effect.gen(function*() {
  const deferred = yield* Deferred.make<number>()
  const completed = yield* Deferred.completeWith(deferred, Effect.succeed(42))
  console.log(completed) // true

  const value = yield* Deferred.await(deferred)
  console.log(value) // 42
})
```

**Signature**

```ts
declare const completeWith: { <A, E>(effect: Effect<A, E>): (self: Deferred<A, E>) => Effect<boolean>; <A, E>(self: Deferred<A, E>, effect: Effect<A, E>): Effect<boolean>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Deferred.ts#L288)

Since v2.0.0