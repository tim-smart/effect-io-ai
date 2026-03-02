Package: `effect`<br />
Module: `Scope`<br />

## Scope.addFinalizerExit

Adds a finalizer to a scope that will be executed when the scope is closed.
Finalizers are cleanup functions that receive the exit value of the scope.

**Example**

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Scope.ts#L332)

Since v4.0.0