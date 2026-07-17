Package: `effect`<br />
Module: `Deferred`<br />

## Deferred.doneUnsafe

Attempts to complete the `Deferred` synchronously with the specified
completion effect.

**When to use**

Use to complete a `Deferred` synchronously in low-level code that already has
the completion effect.

**Details**

This mutates the `Deferred` directly and should be reserved for low-level
code; prefer the effectful completion APIs when possible. Returns `true` if
this call completed the `Deferred`, or `false` if it was already completed.

**Example** (Completing a Deferred unsafely)

```ts
import { Deferred, Effect } from "effect"

const deferred = Deferred.makeUnsafe<number>()
const success = Deferred.doneUnsafe(deferred, Effect.succeed(42))
console.log(success) // true
```

**Signature**

```ts
declare const doneUnsafe: <A, E>(self: Deferred<A, E>, effect: Effect<A, E>) => boolean
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Deferred.ts#L846)

Since v4.0.0