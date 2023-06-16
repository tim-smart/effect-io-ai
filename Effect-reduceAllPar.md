# reduceAllPar

Reduces an `Iterable<Effect<R, E, A>>` to a single effect, working in
parallel.

Part of the `Effect` module from the `@effect/io` package. Also known as `Effect.reduceAllPar`.

### Signature

```typescript
export declare const reduceAllPar: {
  <R, E, A>(zero: Effect<R, E, A>, f: (acc: A, a: A) => A): (elements: Iterable<Effect<R, E, A>>) => Effect<R, E, A>
  <R, E, A>(elements: Iterable<Effect<R, E, A>>, zero: Effect<R, E, A>, f: (acc: A, a: A) => A): Effect<R, E, A>
}
```
