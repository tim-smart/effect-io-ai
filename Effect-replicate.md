# replicate

Replicates the given effect `n` times.

Part of the `Effect` module from the `@effect/io` package.

### Signature

```typescript
export declare const replicate: (n: number) => <R, E, A>(self: Effect<R, E, A>) => Effect<R, E, A>[]
```
