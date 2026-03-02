Package: `effect`<br />
Module: `Scope`<br />

## Scope.State.Open

Represents an open scope state where finalizers can be added and
the scope is still accepting new resources.

**Example**

```ts
import { Scope } from "effect"

const scope = Scope.makeUnsafe()

// When scope is open, you can check its state
if (scope.state._tag === "Open") {
  console.log("Scope is open and accepting finalizers")
  console.log(scope.state.finalizers.size) // Number of registered finalizers
}
```

**Signature**

```ts
type Open = {
    readonly _tag: "Open"
    readonly finalizers: Map<{}, (exit: Exit<any, any>) => Effect<void>>
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Scope.ts#L154)

Since v2.0.0