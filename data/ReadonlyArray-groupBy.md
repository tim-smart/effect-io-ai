# groupBy

Splits an `Iterable` into sub-non-empty-arrays stored in an object, based on the result of calling a `string`-returning
function on each element, and grouping the results according to values returned

Part of the `ReadonlyArray` module, imported from `@effect/data/ReadonlyArray`.

**Signature**

```ts
export declare const groupBy: {
  <A>(f: (a: A) => string): (self: Iterable<A>) => Record<string, [A, ...A[]]>
  <A>(self: Iterable<A>, f: (a: A) => string): Record<string, [A, ...A[]]>
}
```
