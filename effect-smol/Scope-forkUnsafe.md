Package: `effect`<br />
Module: `Scope`<br />

## Scope.forkUnsafe

Creates a child scope from a parent scope synchronously without wrapping it in an `Effect`.
The child scope inherits the parent's finalization strategy unless overridden.

**Example**

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Scope.ts#L424)

Since v4.0.0