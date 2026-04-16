Package: `effect`<br />
Module: `Deferred`<br />

## Deferred.poll

Returns the current completion effect as an `Option`. This returns
`Option.some(effect)` when the `Deferred` is completed, `Option.none()`
otherwise.

**Example**

```ts
import { Deferred, Effect } from "effect"

const program = Effect.gen(function*() {
  const deferred = yield* Deferred.make<number>()
  const beforeCompletion = yield* Deferred.poll(deferred)
  console.log(beforeCompletion._tag === "None") // true

  yield* Deferred.succeed(deferred, 42)
  const afterCompletion = yield* Deferred.poll(deferred)
  console.log(afterCompletion._tag === "Some") // true
})
```

**Signature**

```ts
declare const poll: <A, E>(self: Deferred<A, E>) => Effect<Option.Option<Effect<A, E>>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Deferred.ts#L600)

Since v2.0.0