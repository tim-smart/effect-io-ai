Package: `effect`<br />
Module: `Deferred`<br />

## Deferred.succeed

Completes the `Deferred` with the specified value.

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
declare const succeed: { <A>(value: A): <E>(self: Deferred<A, E>) => Effect<boolean>; <A, E>(self: Deferred<A, E>, value: A): Effect<boolean>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Deferred.ts#L616)

Since v2.0.0