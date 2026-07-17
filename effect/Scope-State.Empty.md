Package: `effect`<br />
Module: `Scope`<br />

## Scope.State.Empty

Represents an open scope with no registered finalizers yet.

**Details**

Adding the first finalizer transitions the scope to `Open`; closing an
empty scope transitions directly to `Closed` without producing a finalizer
effect.

**Example** (Inspecting an empty scope state)

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
type Empty = {
    readonly _tag: "Empty"
  }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Scope.ts#L136)

Since v4.0.0