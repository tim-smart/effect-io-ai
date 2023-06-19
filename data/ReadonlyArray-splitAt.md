# splitAt

Splits an `Iterable` into two pieces, the first piece has max `n` elements.

Part of the `ReadonlyArray` module, imported from `@effect/data/ReadonlyArray`.

**Signature**

```ts
export declare const splitAt: {
  (n: number): <A>(self: Iterable<A>) => [A[], A[]]
  <A>(self: Iterable<A>, n: number): [A[], A[]]
}
```
