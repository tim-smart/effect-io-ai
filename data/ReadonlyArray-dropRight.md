# dropRight

Drop a max number of elements from the end of an `Iterable`, creating a new `Array`.

**Note**. `n` is normalized to a non negative integer.

Part of the `ReadonlyArray` module, imported from `@effect/data/ReadonlyArray`.

**Signature**

```ts
export declare const dropRight: { (n: number): <A>(self: Iterable<A>) => A[]; <A>(self: Iterable<A>, n: number): A[] }
```
