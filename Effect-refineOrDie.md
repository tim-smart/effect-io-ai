# refineOrDie

Keeps some of the errors, and terminates the fiber with the rest

Part of the `Effect` module from the `@effect/io` package.

### Signature

```typescript
export declare const refineOrDie: {
  <E, E1>(pf: (e: E) => Option.Option<E1>): <R, A>(self: Effect<R, E, A>) => Effect<R, E1, A>
  <R, E, A, E1>(self: Effect<R, E, A>, pf: (e: E) => Option.Option<E1>): Effect<R, E1, A>
}
```
