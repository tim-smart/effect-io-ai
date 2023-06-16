# refineOrDieWith

Keeps some of the errors, and terminates the fiber with the rest, using
the specified function to convert the `E` into a defect.

Part of the `Effect` module, imported from `@effect/io/Effect`.

### Signature

```typescript
export declare const refineOrDieWith: {
  <E, E1>(pf: (e: E) => Option.Option<E1>, f: (e: E) => unknown): <R, A>(self: Effect<R, E, A>) => Effect<R, E1, A>
  <R, E, A, E1>(self: Effect<R, E, A>, pf: (e: E) => Option.Option<E1>, f: (e: E) => unknown): Effect<R, E1, A>
}
```
