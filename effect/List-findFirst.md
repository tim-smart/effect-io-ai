# findFirst

Returns the first element that satisfies the specified
predicate, or `None` if no such element exists.

To import and use `findFirst` from the "List" module:

```ts
import * as List from "effect/List"
// Can be accessed like this
List.findFirst
```

**Signature**

```ts
export declare const findFirst: {
  <A, B extends A>(refinement: Refinement<A, B>): (self: List<A>) => Option.Option<B>
  <B extends A, A = B>(predicate: Predicate<A>): (self: List<B>) => Option.Option<B>
  <A, B extends A>(self: List<A>, refinement: Refinement<A, B>): Option.Option<B>
  <A>(self: List<A>, predicate: Predicate<A>): Option.Option<A>
}
```
