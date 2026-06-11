Package: `effect`<br />
Module: `Deferred`<br />

## Deferred.completeWith

Attempts to complete the `Deferred` with the specified effect directly.

**When to use**

Use to store an already environment-free effect as the completion without
running it during completion.

**Details**

The returned effect succeeds with `true` when this call completed the
`Deferred`, or `false` if it was already completed.

**Gotchas**

The supplied effect is not memoized by `completeWith`; each awaiter may run
the stored effect independently.

**Example** (Completing a Deferred with an effect)

```ts
import { Deferred, Effect } from "effect"

const program = Effect.gen(function*() {
  const deferred = yield* Deferred.make<number>()
  const completed = yield* Deferred.completeWith(deferred, Effect.succeed(42))
  console.log(completed) // true

  const value = yield* Deferred.await(deferred)
  console.log(value) // 42
})
```

**See**

- `complete` for running an effect once and sharing its result
- `done` for completing from an already computed `Exit`

**Signature**

```ts
declare const completeWith: { <A, E>(effect: Effect<A, E>): (self: Deferred<A, E>) => Effect<boolean>; <A, E>(self: Deferred<A, E>, effect: Effect<A, E>): Effect<boolean>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Deferred.ts#L315)

Since v2.0.0