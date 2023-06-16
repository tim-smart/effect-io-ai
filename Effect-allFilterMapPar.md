# allFilterMapPar

Evaluate each effect in the structure with `collectAllPar`, and collect
the results with given partial function.

Part of the `Effect` module from the `@effect/io` package.

### Signature

```typescript
export declare const allFilterMapPar: {
  <A, B>(pf: (a: A) => Option.Option<B>): <R, E>(elements: Iterable<Effect<R, E, A>>) => Effect<R, E, B[]>
  <R, E, A, B>(elements: Iterable<Effect<R, E, A>>, pf: (a: A) => Option.Option<B>): Effect<R, E, B[]>
}
```
