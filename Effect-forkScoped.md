# forkScoped

Forks the fiber in a `Scope`, interrupting it when the scope is closed.

Part of the `Effect` module from the `@effect/io` package.

### Signature

```typescript
export declare const forkScoped: <R, E, A>(
  self: Effect<R, E, A>
) => Effect<Scope.Scope | R, never, Fiber.RuntimeFiber<E, A>>
```
