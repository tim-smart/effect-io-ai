Package: `effect`<br />
Module: `Scope`<br />

## Scope.close

Closes a scope, running all registered finalizers in the appropriate order.
The exit value is passed to each finalizer.

**Example**

```ts
import { Console, Effect, Exit, Scope } from "effect"

const resourceManagement = Effect.gen(function*() {
  const scope = yield* Scope.make("sequential")

  // Add multiple finalizers
  yield* Scope.addFinalizer(scope, Console.log("Close database connection"))
  yield* Scope.addFinalizer(scope, Console.log("Close file handle"))
  yield* Scope.addFinalizer(scope, Console.log("Release memory"))

  // Do some work...
  yield* Console.log("Performing operations...")

  // Close scope - finalizers run in reverse order of registration
  yield* Scope.close(scope, Exit.succeed("Success!"))
  // Output: "Release memory", "Close file handle", "Close database connection"
})
```

**Signature**

```ts
declare const close: <A, E>(self: Scope, exit: Exit<A, E>) => Effect<void>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Scope.ts#L455)

Since v4.0.0