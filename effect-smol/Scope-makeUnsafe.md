Package: `effect`<br />
Module: `Scope`<br />

## Scope.makeUnsafe

Creates a new `Scope` synchronously without wrapping it in an `Effect`.
This is useful when you need a scope immediately but should be used with caution
as it doesn't provide the same safety guarantees as the `Effect`-wrapped version.

**Example**

```ts
import { Console, Effect, Exit, Scope } from "effect"

// Create a scope immediately
const scope = Scope.makeUnsafe("sequential")

// Use it in an Effect program
const program = Effect.gen(function*() {
  yield* Scope.addFinalizer(scope, Console.log("Cleanup"))
  yield* Scope.close(scope, Exit.void)
})
```

**Signature**

```ts
declare const makeUnsafe: (finalizerStrategy?: "sequential" | "parallel") => Closeable
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Scope.ts#L261)

Since v4.0.0