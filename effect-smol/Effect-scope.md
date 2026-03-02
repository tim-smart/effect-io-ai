Package: `effect`<br />
Module: `Effect`<br />

## Effect.scope

Returns the current scope for resource management.

**Example**

```ts
import { Console, Effect } from "effect"

const program = Effect.gen(function*() {
  const currentScope = yield* Effect.scope
  yield* Console.log("Got scope for resource management")

  // Use the scope to manually manage resources if needed
  const resource = yield* Effect.acquireRelease(
    Console.log("Acquiring resource").pipe(Effect.as("resource")),
    () => Console.log("Releasing resource")
  )

  return resource
})

Effect.runPromise(Effect.scoped(program)).then(console.log)
// Output:
// Got scope for resource management
// Acquiring resource
// resource
// Releasing resource
```

**Signature**

```ts
declare const scope: Effect<Scope, never, Scope>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L6045)

Since v2.0.0