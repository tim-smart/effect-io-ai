Package: `effect`<br />
Module: `Scope`<br />

## Scope.fork

Creates a child scope from a parent scope. The child scope inherits the
parent's finalization strategy unless overridden.

**Example**

```ts
import { Console, Effect, Exit, Scope } from "effect"

const nestedScopes = Effect.gen(function*() {
  const parentScope = yield* Scope.make("sequential")

  // Add finalizer to parent
  yield* Scope.addFinalizer(parentScope, Console.log("Parent cleanup"))

  // Create child scope
  const childScope = yield* Scope.fork(parentScope, "parallel")

  // Add finalizer to child
  yield* Scope.addFinalizer(childScope, Console.log("Child cleanup"))

  // Close child first, then parent
  yield* Scope.close(childScope, Exit.void)
  yield* Scope.close(parentScope, Exit.void)
})
```

**Signature**

```ts
declare const fork: (scope: Scope, finalizerStrategy?: "sequential" | "parallel") => Effect<Closeable>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Scope.ts#L394)

Since v4.0.0