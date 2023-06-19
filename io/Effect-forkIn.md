# forkIn

Forks the effect in the specified scope. The fiber will be interrupted
when the scope is closed.

Part of the `Effect` module, imported from `@effect/io/Effect`.

**Signature**

```ts
export declare const forkIn: {
  (scope: Scope.Scope): <R, E, A>(self: Effect<R, E, A>) => Effect<R, never, Fiber.RuntimeFiber<E, A>>
  <R, E, A>(self: Effect<R, E, A>, scope: Scope.Scope): Effect<R, never, Fiber.RuntimeFiber<E, A>>
}
```
