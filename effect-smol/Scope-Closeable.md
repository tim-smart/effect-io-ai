Package: `effect`<br />
Module: `Scope`<br />

## Scope.Closeable

A `Closeable` scope extends the base `Scope` interface with the ability
to be closed, executing all registered finalizers.

**Example**

```ts
import { Console, Effect, Exit, Scope } from "effect"

const program = Effect.gen(function*() {
  const scope = yield* Scope.make()

  // Add a finalizer
  yield* Scope.addFinalizer(scope, Console.log("Cleanup!"))

  // Scope can be closed
  yield* Scope.close(scope, Exit.void)
})
```

**Signature**

```ts
export interface Closeable extends Scope {
  readonly [CloseableTypeId]: typeof CloseableTypeId
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Scope.ts#L77)

Since v2.0.0