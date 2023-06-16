# forkAllDiscard

Returns an effect that forks all of the specified values, and returns a
composite fiber that produces unit. This version is faster than `forkAll`
in cases where the results of the forked fibers are not needed.

Part of the `Effect` module from the `@effect/io` package.

### Signature

```typescript
export declare const forkAllDiscard: <R, E, A>(effects: Iterable<Effect<R, E, A>>) => Effect<R, never, void>
```
