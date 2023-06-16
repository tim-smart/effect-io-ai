# forkAll

Returns an effect that forks all of the specified values, and returns a
composite fiber that produces a list of their results, in order.

Part of the `Effect` module, imported from `@effect/io/Effect`.

### Signature

```typescript
export declare const forkAll: <R, E, A>(effects: Iterable<Effect<R, E, A>>) => Effect<R, never, Fiber.Fiber<E, A[]>>
```
