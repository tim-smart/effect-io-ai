Package: `effect`<br />
Module: `Deferred`<br />

## Deferred.isDone

Returns `true` if this `Deferred` has already been completed with a value or
an error, `false` otherwise.

**Example**

```ts
import { Deferred, Effect } from "effect"

const program = Effect.gen(function*() {
  const deferred = yield* Deferred.make<number>()
  const beforeCompletion = yield* Deferred.isDone(deferred)
  console.log(beforeCompletion) // false

  yield* Deferred.succeed(deferred, 42)
  const afterCompletion = yield* Deferred.isDone(deferred)
  console.log(afterCompletion) // true
})
```

**Signature**

```ts
declare const isDone: <A, E>(self: Deferred<A, E>) => Effect<boolean>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Deferred.ts#L559)

Since v2.0.0