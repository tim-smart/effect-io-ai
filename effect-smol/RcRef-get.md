Package: `effect`<br />
Module: `RcRef`<br />

## RcRef.get

Get the value from an RcRef.

This will acquire the resource if it hasn't been acquired yet, or increment
the reference count if it has. The resource will be automatically released
when the returned scope is closed.

**Example**

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RcRef.ts#L160)

Since v3.5.0