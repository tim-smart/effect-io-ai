Package: `effect`<br />
Module: `Scope`<br />

## Scope.addFinalizerExit

Registers an exit-aware finalizer on a scope.

**Details**

If the scope is open, the finalizer runs when the scope closes and receives
the scope's exit value. If the scope is already closed, the finalizer runs
immediately with the stored exit value.

**Example** (Adding an exit-aware finalizer)

```ts
import { Console, Effect, Exit, Scope } from "effect"

const withResource = Effect.gen(function*() {
  const scope = yield* Scope.make()

  // Add a finalizer for cleanup
  yield* Scope.addFinalizerExit(
    scope,
    (exit) =>
      Console.log(
        `Cleaning up resource. Exit: ${
          Exit.isSuccess(exit) ? "Success" : "Failure"
        }`
      )
  )

  // Use the resource
  yield* Console.log("Using resource")

  // Close the scope
  yield* Scope.close(scope, Exit.void)
})
```

**Signature**

```ts
declare const addFinalizerExit: (scope: Scope, finalizer: (exit: Exit<any, any>) => Effect<unknown>) => Effect<void>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Scope.ts#L347)

Since v2.0.0