Package: `effect`<br />
Module: `Scope`<br />

## Scope.Scope

A `Scope` represents a context where resources can be acquired and
automatically cleaned up when the scope is closed. Scopes can use
either sequential or parallel finalization strategies.

**Example**

```ts
import { Effect, Exit, Scope } from "effect"

const program = Effect.gen(function*() {
  const scope = yield* Scope.make("sequential")

  // Scope has a strategy and state
  console.log(scope.strategy) // "sequential"
  console.log(scope.state._tag) // "Open"

  // Close the scope
  yield* Scope.close(scope, Exit.void)
  console.log(scope.state._tag) // "Closed"
})
```

**Signature**

```ts
export interface Scope {
  readonly [TypeId]: typeof TypeId
  readonly strategy: "sequential" | "parallel"
  state: State.Open | State.Closed | State.Empty
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Scope.ts#L50)

Since v2.0.0