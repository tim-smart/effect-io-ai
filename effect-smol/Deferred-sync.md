Package: `effect`<br />
Module: `Deferred`<br />

## Deferred.sync

Completes the `Deferred` with the specified lazily evaluated value.

**Example**

```ts
import { Deferred, Effect } from "effect"

const program = Effect.gen(function*() {
  const deferred = yield* Deferred.make<number>()
  yield* Deferred.sync(deferred, () => 42)

  const value = yield* Deferred.await(deferred)
  console.log(value) // 42
})
```

**Signature**

```ts
declare const sync: { <A>(evaluate: LazyArg<A>): <E>(self: Deferred<A, E>) => Effect<boolean>; <A, E>(self: Deferred<A, E>, evaluate: LazyArg<A>): Effect<boolean>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Deferred.ts#L647)

Since v2.0.0