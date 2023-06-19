# equalsWith

Returns `true` if the two lists are equal according to the provided function,
`false` otherwise.

Part of the `List` module, imported from `@effect/data/List`.

**Signature**

```ts
export declare const equalsWith: {
  <A, B>(that: List<B>, f: (a: A, b: B) => boolean): (self: List<A>) => boolean
  <A, B>(self: List<A>, that: List<B>, f: (a: A, b: B) => boolean): boolean
}
```
