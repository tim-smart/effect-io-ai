# appendElement

This function appends a predicate to a tuple-like predicate, allowing you to create a new predicate that includes
the original elements and the new one.

Part of the `Predicate` module, imported from `@effect/data/Predicate`.

**Signature**

```ts
export declare const appendElement: {
  <A extends readonly any[], B>(self: Predicate<A>, that: Predicate<B>): Predicate<readonly [...A, B]>
  <B>(that: Predicate<B>): <A extends readonly any[]>(self: Predicate<A>) => Predicate<readonly [...A, B]>
}
```
