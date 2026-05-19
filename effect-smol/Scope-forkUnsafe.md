Package: `effect`<br />
Module: `Scope`<br />

## Scope.forkUnsafe

Synchronously creates a closeable child scope registered with a parent scope.

Closing the parent closes the child with the same exit value, and closing the
child detaches it from the parent. The optional finalizer strategy configures
the child scope and defaults to `"sequential"` when omitted.

**Example** (Creating a child scope synchronously)

```ts
import { Console, Effect, Exit, Scope } from "effect"

const program = Effect.gen(function*() {
  const parentScope = Scope.makeUnsafe("sequential")
  const childScope = Scope.forkUnsafe(parentScope, "parallel")

  // Add finalizers to both scopes
  yield* Scope.addFinalizer(parentScope, Console.log("Parent cleanup"))
  yield* Scope.addFinalizer(childScope, Console.log("Child cleanup"))

  // Close child first, then parent
  yield* Scope.close(childScope, Exit.void)
  yield* Scope.close(parentScope, Exit.void)
})
```

**Signature**

```ts
declare const forkUnsafe: (scope: Scope, finalizerStrategy?: "sequential" | "parallel") => Closeable
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Scope.ts#L446)

Since v4.0.0