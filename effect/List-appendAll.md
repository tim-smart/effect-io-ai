# appendAll

Concatenates two lists, combining their elements.
If either list is non-empty, the result is also a non-empty list.

To import and use `appendAll` from the "List" module:

```ts
import * as List from "effect/List"
// Can be accessed like this
List.appendAll
```

**Example**

```ts
import * as List from "effect/List"

assert.deepStrictEqual(List.make(1, 2).pipe(List.appendAll(List.make("a", "b")), List.toArray), [1, 2, "a", "b"])
```

**Signature**

```ts
export declare const appendAll: {
  <S extends List<any>, T extends List<any>>(that: T): (self: S) => List.OrNonEmpty<S, T, List.Infer<S> | List.Infer<T>>
  <A, B>(self: List<A>, that: Cons<B>): Cons<A | B>
  <A, B>(self: Cons<A>, that: List<B>): Cons<A | B>
  <A, B>(self: List<A>, that: List<B>): List<A | B>
}
```
