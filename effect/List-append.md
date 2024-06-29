# append

Appends the specified element to the end of the `List`, creating a new `Cons`.

To import and use `append` from the "List" module:

```ts
import * as List from "effect/List"
// Can be accessed like this
List.append
```

**Signature**

```ts
export declare const append: {
  <B>(element: B): <A>(self: List<A>) => Cons<B | A>
  <A, B>(self: List<A>, element: B): Cons<A | B>
}
```
