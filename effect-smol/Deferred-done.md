Package: `effect`<br />
Module: `Deferred`<br />

## Deferred.done

Exits the `Deferred` with the specified `Exit` value, which will be
propagated to all fibers waiting on the value of the `Deferred`.

**Example**

```ts
import { Deferred, Effect, Exit } from "effect"

const program = Effect.gen(function*() {
  const deferred = yield* Deferred.make<number>()
  yield* Deferred.done(deferred, Exit.succeed(42))

  const value = yield* Deferred.await(deferred)
  console.log(value) // 42
})
```

**Signature**

```ts
declare const done: { <A, E>(exit: Exit.Exit<A, E>): (self: Deferred<A, E>) => Effect<boolean>; <A, E>(self: Deferred<A, E>, exit: Exit.Exit<A, E>): Effect<boolean>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Deferred.ts#L317)

Since v2.0.0