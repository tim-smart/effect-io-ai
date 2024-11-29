# some

Check if a predicate holds true for some `List` element.

To import and use `some` from the "List" module:

ts
import \* as List from "effect/List"
// Can be accessed like this
List.some
undefined

**Signature**

```ts
export declare const some: {
  <A>(predicate: Predicate<NoInfer<A>>): (self: List<A>) => self is Cons<A>
  <A>(self: List<A>, predicate: Predicate<A>): self is Cons<A>
}
```
