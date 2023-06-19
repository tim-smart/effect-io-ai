# intercalate

Fold an `Iterable`, accumulating values in some `Monoid`, combining adjacent elements
using the specified separator.

Part of the `ReadonlyArray` module, imported from `@effect/data/ReadonlyArray`.

**Signature**

```ts
export declare const intercalate: <A>(M: Monoid<A>) => {
  (middle: A): (self: Iterable<A>) => A
  (self: Iterable<A>, middle: A): A
}
```
