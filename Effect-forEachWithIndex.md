# forEachWithIndex

Same as `forEach`, except that the function `f` is supplied
a second argument that corresponds to the index (starting from 0)
of the current element being iterated over.

Part of the `Effect` module, imported from `@effect/io/Effect`.

### Signature

```typescript
export declare const forEachWithIndex: {
  <A, R, E, B>(f: (a: A, i: number) => Effect<R, E, B>): (elements: Iterable<A>) => Effect<R, E, B[]>
  <A, R, E, B>(elements: Iterable<A>, f: (a: A, i: number) => Effect<R, E, B>): Effect<R, E, B[]>
}
```
