# map

Maps over the values of the `HashSet` using the specified function.

Part of the `HashSet` module, imported from `@effect/data/HashSet`.

**Signature**

```ts
export declare const map: {
  <A, B>(f: (a: A) => B): (self: HashSet<A>) => HashSet<B>
  <A, B>(self: HashSet<A>, f: (a: A) => B): HashSet<B>
}
```
