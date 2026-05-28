Package: `effect`<br />
Module: `Deferred`<br />

## Deferred.done

Completes the `Deferred` with the specified `Exit` value, which will be
propagated to all fibers waiting on the value of the `Deferred`.

**When to use**

Use to complete a `Deferred` from an already computed `Exit`.

**Details**

The returned effect succeeds with `true` when this call completed the
`Deferred`, or `false` if it was already completed.

**Example** (Completing a Deferred with an Exit)

```ts
import { Deferred, Effect, Exit } from "effect"

const program = Effect.gen(function*() {
  const deferred = yield* Deferred.make<number>()
  yield* Deferred.done(deferred, Exit.succeed(42))

  const value = yield* Deferred.await(deferred)
  console.log(value) // 42
})
```

**See**

- `complete` for completing from an effect and memoizing its result
- `completeWith` for storing an effect directly
- `succeed` for completing with a success value
- `failCause` for completing with a failure cause

**Signature**

```ts
declare const done: { <A, E>(exit: Exit.Exit<A, E>): (self: Deferred<A, E>) => Effect<boolean>; <A, E>(self: Deferred<A, E>, exit: Exit.Exit<A, E>): Effect<boolean>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Deferred.ts#L412)

Since v2.0.0