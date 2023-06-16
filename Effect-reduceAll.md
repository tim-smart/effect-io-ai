# reduceAll

Reduces an `Iterable<Effect<R, E, A>>` to a single effect, working
sequentially.

Part of the `Effect` module, imported from `@effect/io/Effect`.

### Signature

```typescript
export declare const reduceAll: {
  <R, E, A>(zero: Effect<R, E, A>, f: (acc: A, a: A) => A): (elements: Iterable<Effect<R, E, A>>) => Effect<R, E, A>
  <R, E, A>(elements: Iterable<Effect<R, E, A>>, zero: Effect<R, E, A>, f: (acc: A, a: A) => A): Effect<R, E, A>
}
```
