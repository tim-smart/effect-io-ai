Package: `effect`<br />
Module: `Deferred`<br />

## Deferred.interrupt

Attempts to complete the `Deferred` with interruption by the current fiber.

**When to use**

Use to complete a `Deferred` as interrupted by the current fiber.

**Details**

Fibers waiting on the `Deferred` are interrupted with the current fiber id
only if this call completes it. The returned effect succeeds with `true`
when this call completed the `Deferred`, or `false` if it was already
completed.

**Example** (Interrupting a Deferred)

```ts
import { Deferred, Effect } from "effect"

const program = Effect.gen(function*() {
  const deferred = yield* Deferred.make<number>()
  const success = yield* Deferred.interrupt(deferred)
  console.log(success) // true
})
```

**Signature**

```ts
declare const interrupt: <A, E>(self: Deferred<A, E>) => Effect<boolean>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Deferred.ts#L623)

Since v2.0.0