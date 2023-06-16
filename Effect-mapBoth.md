# mapBoth

Returns an effect whose failure and success channels have been mapped by
the specified pair of functions, `f` and `g`.

Part of the `Effect` module, imported from `@effect/io/Effect`.

### Signature

```typescript
export declare const mapBoth: {
  <E, A, E2, A2>(f: (e: E) => E2, g: (a: A) => A2): <R>(self: Effect<R, E, A>) => Effect<R, E2, A2>
  <R, E, A, E2, A2>(self: Effect<R, E, A>, f: (e: E) => E2, g: (a: A) => A2): Effect<R, E2, A2>
}
```
