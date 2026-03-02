Package: `effect`<br />
Module: `Scope`<br />

## Scope.State.Closed

Represents a closed scope state where finalizers have been executed
and the scope is no longer accepting new resources.

**Example**

```ts
import { Effect, Exit, Scope } from "effect"

const program = Effect.gen(function*() {
  const scope = yield* Scope.make()

  // Close the scope
  yield* Scope.close(scope, Exit.succeed("Done"))

  // Check if scope is closed
  if (scope.state._tag === "Closed") {
    console.log("Scope is closed")
    console.log(scope.state.exit) // The exit value used to close the scope
  }
})
```

**Signature**

```ts
type Closed = {
    readonly _tag: "Closed"
    readonly exit: Exit<any, any>
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Scope.ts#L183)

Since v2.0.0