# lift2

Lifts a binary function into `ReadonlyArray`.

Part of the `ReadonlyArray` module, imported from `@effect/data/ReadonlyArray`.

**Signature**

```ts
export declare const lift2: <A, B, C>(
  f: (a: A, b: B) => C
) => { (self: readonly A[], that: readonly B[]): C[]; (that: readonly B[]): (self: readonly A[]) => C[] }
```
