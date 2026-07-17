Package: `effect`<br />
Module: `Deferred`<br />

## Deferred.interruptWith

Attempts to complete the `Deferred` with interruption by the specified
`FiberId`.

**When to use**

Use to complete a `Deferred` as interrupted by a specific fiber id.

**Details**

Fibers waiting on the `Deferred` are interrupted with that fiber id only if
this call completes it. The returned effect succeeds with `true` when this
call completed the `Deferred`, or `false` if it was already completed.

**Example** (Interrupting a Deferred with a fiber id)

```ts
import { Deferred, Effect } from "effect"

const program = Effect.gen(function*() {
  const deferred = yield* Deferred.make<number>()
  const success = yield* Deferred.interruptWith(deferred, 42)
  console.log(success) // true
})
```

**Signature**

```ts
declare const interruptWith: { (fiberId: number): <A, E>(self: Deferred<A, E>) => Effect<boolean>; <A, E>(self: Deferred<A, E>, fiberId: number): Effect<boolean>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Deferred.ts#L655)

Since v2.0.0