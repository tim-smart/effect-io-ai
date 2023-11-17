# forkScoped

Forks the fiber in a `Scope`, interrupting it when the scope is closed.

To import and use `forkScoped` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.forkScoped
```

**Signature**

```ts
export declare const forkScoped: <R, E, A>(
  self: Effect<R, E, A>
) => Effect<Scope.Scope | R, never, Fiber.RuntimeFiber<E, A>>
```
