# forkScoped

Forks the fiber in a `Scope`, interrupting it when the scope is closed.

To import and use `forkScoped` from the "Effect" module:

ts
import \* as Effect from "effect/Effect"
// Can be accessed like this
Effect.forkScoped
undefined

**Signature**

```ts
export declare const forkScoped: <A, E, R>(
  self: Effect<A, E, R>
) => Effect<Fiber.RuntimeFiber<A, E>, never, Scope.Scope | R>
```
