Package: `effect`<br />
Module: `Deferred`<br />

## Deferred.await

Retrieves the value of the `Deferred`, suspending the fiber running the
workflow until the result is available.

**When to use**

Use to wait for a `Deferred` to be completed and resume with its success,
failure, defect, or interruption.

**Details**

Awaiters observe the completion effect stored in the `Deferred`.

**Example** (Awaiting a Deferred value)

```ts
import { Deferred, Effect } from "effect"

const program = Effect.gen(function*() {
  const deferred = yield* Deferred.make<number>()
  yield* Deferred.succeed(deferred, 42)

  const value = yield* Deferred.await(deferred)
  console.log(value) // 42
})
```

**See**

- `complete` for completing from an effect and memoizing its result
- `completeWith` for completing with an effect directly

**Signature**

```ts
declare const await: <A, E>(self: Deferred<A, E>) => Effect<A, E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Deferred.ts#L230)

Since v2.0.0