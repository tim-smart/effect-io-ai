Package: `effect`<br />
Module: `Scope`<br />

## Scope.make

Creates a new `Scope` with the specified finalizer strategy.

**Example**

```ts
import { Console, Effect, Exit, Scope } from "effect"

const program = Effect.gen(function*() {
  // Create a scope with sequential cleanup
  const scope = yield* Scope.make("sequential")

  // Add finalizers
  yield* Scope.addFinalizer(scope, Console.log("Cleanup 1"))
  yield* Scope.addFinalizer(scope, Console.log("Cleanup 2"))

  // Close the scope (finalizers run in reverse order)
  yield* Scope.close(scope, Exit.void)
  // Output: "Cleanup 2", then "Cleanup 1"
})
```

**Signature**

```ts
declare const make: (finalizerStrategy?: "sequential" | "parallel") => Effect<Closeable>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Scope.ts#L237)

Since v2.0.0