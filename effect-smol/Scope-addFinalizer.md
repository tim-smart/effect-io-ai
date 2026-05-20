Package: `effect`<br />
Module: `Scope`<br />

## Scope.addFinalizer

Registers a finalizer effect on a scope.

**Details**

If the scope is open, the finalizer runs when the scope closes, regardless of
whether the scope closes successfully or with an error. If the scope is
already closed, the finalizer runs immediately.

**Example** (Adding finalizers)

```ts
import { Console, Effect, Exit, Scope } from "effect"

const program = Effect.gen(function*() {
  const scope = yield* Scope.make()

  // Add simple finalizers
  yield* Scope.addFinalizer(scope, Console.log("Cleanup task 1"))
  yield* Scope.addFinalizer(scope, Console.log("Cleanup task 2"))
  yield* Scope.addFinalizer(scope, Effect.log("Cleanup task 3"))

  // Do some work
  yield* Console.log("Doing work...")

  // Close the scope
  yield* Scope.close(scope, Exit.void)
})
```

**Signature**

```ts
declare const addFinalizer: (scope: Scope, finalizer: Effect<unknown>) => Effect<void>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Scope.ts#L383)

Since v2.0.0