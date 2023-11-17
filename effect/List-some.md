# some

Check if a predicate holds true for some `List` element.

To import and use `some` from the "List" module:

```ts
import * as List from "effect/List"
// Can be accessed like this
List.some
```

**Signature**

```ts
export declare const some: {
  <A>(predicate: Predicate<A>): <B extends A>(self: List<B>) => self is Cons<B>
  <B extends A, A = B>(self: List<B>, predicate: Predicate<A>): self is Cons<B>
}
```
