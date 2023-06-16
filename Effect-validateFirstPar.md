# validateFirstPar

Feeds elements of type `A` to `f` until it succeeds. Returns first success
or the accumulation of all errors.

Part of the `Effect` module from the `@effect/io` package.

### Signature

```typescript
export declare const validateFirstPar: {
  <R, E, A, B>(f: (a: A) => Effect<R, E, B>): (elements: Iterable<A>) => Effect<R, E[], B>
  <R, E, A, B>(elements: Iterable<A>, f: (a: A) => Effect<R, E, B>): Effect<R, E[], B>
}
```
