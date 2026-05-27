Package: `effect`<br />
Module: `RcRef`<br />

## RcRef.get

Gets the value from an `RcRef`, acquiring it first if needed.

**When to use**

Use to borrow the current resource within a `Scope`, acquiring it first if
necessary.

**Details**

The reference count is incremented for the current `Scope`, and a release
finalizer is added to that scope. When the current scope closes, the
reference is released; the resource is closed when the final reference is
released, subject to any configured idle time-to-live.

**Example** (Sharing one acquired value)

```ts
import { Effect, RcRef } from "effect"

const program = Effect.gen(function*() {
  // Create an RcRef with a resource
  const ref = yield* RcRef.make({
    acquire: Effect.acquireRelease(
      Effect.succeed("shared resource"),
      (resource) => Effect.log(`Releasing ${resource}`)
    )
  })

  // Get the value from the RcRef
  const value1 = yield* RcRef.get(ref)
  const value2 = yield* RcRef.get(ref)

  // Both values are the same instance
  console.log(value1 === value2) // true

  return value1
})
```

**Signature**

```ts
declare const get: <A, E>(self: RcRef<A, E>) => Effect.Effect<A, E, Scope>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RcRef.ts#L235)

Since v3.5.0