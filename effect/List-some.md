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
  <B extends A, A = B>(predicate: Predicate<A>): (self: List<B>) => self is Cons<B>
  <A>(self: List<A>, predicate: Predicate<A>): self is Cons<A>
}
```
