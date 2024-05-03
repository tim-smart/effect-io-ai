# prependAll

Prepends the specified prefix list to the beginning of the specified list.
If either list is non-empty, the result is also a non-empty list.

To import and use `prependAll` from the "List" module:

```ts
import * as List from "effect/List"
// Can be accessed like this
List.prependAll
```

**Example**

```ts
import { List } from "effect"

assert.deepStrictEqual(List.make(1, 2).pipe(List.prependAll(List.make("a", "b")), List.toArray), ["a", "b", 1, 2])
```

**Signature**

```ts
export declare const prependAll: {
  <S extends List<any>, T extends List<any>>(that: T): (self: S) => List.OrNonEmpty<S, T, List.Infer<S> | List.Infer<T>>
  <A, B>(self: List<A>, that: Cons<B>): Cons<A | B>
  <A, B>(self: Cons<A>, that: List<B>): Cons<A | B>
  <A, B>(self: List<A>, that: List<B>): List<A | B>
}
```
