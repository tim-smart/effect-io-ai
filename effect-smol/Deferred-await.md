Package: `effect`<br />
Module: `Deferred`<br />

## Deferred.await

Retrieves the value of the `Deferred`, suspending the fiber running the
workflow until the result is available.

**Example**

```ts
import { Deferred, Effect } from "effect"

const program = Effect.gen(function*() {
  const deferred = yield* Deferred.make<number>()
  yield* Deferred.succeed(deferred, 42)

  const value = yield* Deferred.await(deferred)
  console.log(value) // 42
})
```

**Signature**

```ts
declare const await: <A, E>(self: Deferred<A, E>) => Effect<A, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Deferred.ts#L239)

Since v2.0.0