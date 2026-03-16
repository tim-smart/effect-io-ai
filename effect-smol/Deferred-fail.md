Package: `effect`<br />
Module: `Deferred`<br />

## Deferred.fail

Fails the `Deferred` with the specified error, which will be propagated to
all fibers waiting on the value of the `Deferred`.

**Example**

```ts
import { Deferred, Effect } from "effect"

const program = Effect.gen(function*() {
  const deferred = yield* Deferred.make<number, string>()
  const success = yield* Deferred.fail(deferred, "Operation failed")
  console.log(success) // true
})
```

**Signature**

```ts
declare const fail: { <E>(error: E): <A>(self: Deferred<A, E>) => Effect<boolean>; <A, E>(self: Deferred<A, E>, error: E): Effect<boolean>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Deferred.ts#L341)

Since v2.0.0