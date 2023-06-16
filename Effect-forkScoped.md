# forkScoped

Forks the fiber in a `Scope`, interrupting it when the scope is closed.

Part of the `Effect` module, imported from `@effect/io/Effect`.

**Signature**

```ts
export declare const forkScoped: <R, E, A>(
  self: Effect<R, E, A>
) => Effect<Scope.Scope | R, never, Fiber.RuntimeFiber<E, A>>
```
