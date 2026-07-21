Package: `effect`<br />
Module: `Effect`<br />

## Effect.addFinalizer

Adds a finalizer to the current scope.

**When to use**

Use to register low-level cleanup in the current scope.

**Details**

The finalizer runs when the surrounding scope is closed and receives the
`Exit` value used to close the scope.

**Example** (Registering scope finalizers)

```ts
import { Console, Effect, Exit } from "effect"

const program = Effect.scoped(
  Effect.gen(function*() {
    // Add a finalizer that runs when the scope closes
    yield* Effect.addFinalizer((exit) =>
      Console.log(
        Exit.isSuccess(exit)
          ? "Cleanup: Operation completed successfully"
          : "Cleanup: Operation failed, cleaning up resources"
      )
    )

    yield* Console.log("Performing main operation...")

    // This could succeed or fail
    return "operation result"
  })
)

Effect.runPromise(program).then(console.log)
// Output:
// Performing main operation...
// Cleanup: Operation completed successfully
// operation result
```

**See**

- `acquireRelease` for resource acquisition with a release finalizer
- `ensuring` for attaching a finalizer to one effect

**Signature**

```ts
declare const addFinalizer: <R>(finalizer: (exit: Exit.Exit<unknown, unknown>) => Effect<void, never, R>) => Effect<void, never, R | Scope>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L6783)

Since v2.0.0