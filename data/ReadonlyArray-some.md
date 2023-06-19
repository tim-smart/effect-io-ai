# some

Check if a predicate holds true for some `ReadonlyArray` member.

Part of the `ReadonlyArray` module, imported from `@effect/data/ReadonlyArray`.

**Signature**

```ts
export declare const some: <A>(predicate: Predicate<A>) => (self: readonly A[]) => self is readonly [A, ...A[]]
```
