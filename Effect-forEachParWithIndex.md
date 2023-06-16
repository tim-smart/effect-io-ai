# forEachParWithIndex

Same as `forEachPar`, except that the function `f` is supplied
a second argument that corresponds to the index (starting from 0)
of the current element being iterated over.

Part of the `Effect` module from the `@effect/io` package. Also known as `Effect.forEachParWithIndex`.

### Signature

```typescript
export declare const forEachParWithIndex: {
  <R, E, A, B>(f: (a: A, i: number) => Effect<R, E, B>): (elements: Iterable<A>) => Effect<R, E, B[]>
  <R, E, A, B>(elements: Iterable<A>, f: (a: A, i: number) => Effect<R, E, B>): Effect<R, E, B[]>
}
```
