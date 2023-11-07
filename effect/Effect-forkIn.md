# forkIn

Forks the effect in the specified scope. The fiber will be interrupted
when the scope is closed.

To import and use `forkIn` from the "Effect" module:

```ts
import * as Effect from 'effect/Effect'

// Can be accessed like this
Effect.forkIn
```

**Signature**

```ts
export declare const forkIn: {
  (scope: Scope.Scope): <R, E, A>(self: Effect<R, E, A>) => Effect<R, never, Fiber.RuntimeFiber<E, A>>
  <R, E, A>(self: Effect<R, E, A>, scope: Scope.Scope): Effect<R, never, Fiber.RuntimeFiber<E, A>>
}
```
