# flatMap

Flat maps a list using the specified function.

Part of the `List` module, imported from `@effect/data/List`.

**Signature**

```ts
export declare const flatMap: {
  <A, B>(f: (a: A) => List<B>): (self: List<A>) => List<B>
  <A, B>(self: List<A>, f: (a: A) => List<B>): List<B>
}
```
