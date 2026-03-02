Package: `effect`<br />
Module: `Deferred`<br />

## Deferred.poll

Returns a `Effect<A, E, R>` from the `Deferred` if this `Deferred` has
already been completed, `undefined` otherwise.

**Example**

```ts
import { Deferred, Effect } from "effect"

const program = Effect.gen(function*() {
  const deferred = yield* Deferred.make<number>()
  const beforeCompletion = yield* Deferred.poll(deferred)
  console.log(beforeCompletion === undefined) // true

  yield* Deferred.succeed(deferred, 42)
  const afterCompletion = yield* Deferred.poll(deferred)
  console.log(afterCompletion !== undefined) // true
})
```

**Signature**

```ts
declare const poll: <A, E>(self: Deferred<A, E>) => Effect<Effect<A, E> | undefined>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Deferred.ts#L591)

Since v2.0.0