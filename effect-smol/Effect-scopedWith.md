Package: `effect`<br />
Module: `Effect`<br />

## Effect.scopedWith

Creates a scoped effect by providing access to the scope.

**Example**

```ts
import { Console, Effect, Scope } from "effect"

const program = Effect.scopedWith((scope) =>
  Effect.gen(function*() {
    yield* Console.log("Inside scoped context")

    // Manually add a finalizer to the scope
    yield* Scope.addFinalizer(scope, Console.log("Manual finalizer"))

    // Create a scoped resource
    const resource = yield* Effect.scoped(
      Effect.acquireRelease(
        Console.log("Acquiring resource").pipe(Effect.as("resource")),
        () => Console.log("Releasing resource")
      )
    )

    return resource
  })
)

Effect.runPromise(program).then(console.log)
// Output:
// Inside scoped context
// Acquiring resource
// resource
// Releasing resource
// Manual finalizer
```

**Signature**

```ts
declare const scopedWith: <A, E, R>(f: (scope: Scope) => Effect<A, E, R>) => Effect<A, E, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L6169)

Since v2.0.0