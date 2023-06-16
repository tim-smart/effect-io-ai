# zipPar

Zips this effect and that effect in parallel.

Part of the `Effect` module, imported from `@effect/io/Effect`.

### Signature

```typescript
export declare const zipPar: {
  <R2, E2, A2>(that: Effect<R2, E2, A2>): <R, E, A>(self: Effect<R, E, A>) => Effect<R2 | R, E2 | E, [A, A2]>
  <R, E, A, R2, E2, A2>(self: Effect<R, E, A>, that: Effect<R2, E2, A2>): Effect<R | R2, E | E2, [A, A2]>
}
```
