Package: `effect`<br />
Module: `Deferred`<br />

## Deferred.make

Creates a new `Deferred`.

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
declare const make: <A, E = never>() => Effect<Deferred<A, E>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Deferred.ts#L205)

Since v2.0.0