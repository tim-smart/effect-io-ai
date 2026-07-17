Package: `effect`<br />
Module: `Scope`<br />

## Scope.forkUnsafe

Creates a closeable child scope synchronously and registers it with a parent scope.

**When to use**

Use when a child scope must be created synchronously and the caller controls
both parent and child scope lifetimes.

**Details**

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

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Scope.ts#L480)

Since v4.0.0