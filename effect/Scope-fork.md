# fork

Forks a new scope that is a child of this scope. The child scope will
automatically be closed when this scope is closed.

To import and use `fork` from the "Scope" module:

```ts
import * as Scope from 'effect/Scope'

// Can be accessed like this
Scope.fork
```

**Signature**

```ts
export declare const fork: (
  self: Scope,
  strategy: ExecutionStrategy.ExecutionStrategy
) => Effect.Effect<never, never, CloseableScope>
```
