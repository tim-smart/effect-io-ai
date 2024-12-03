# findFirst

Returns the first element that satisfies the specified
predicate, or `None` if no such element exists.

To import and use `findFirst` from the "Iterable" module:

```ts
import * as Iterable from "effect/Iterable"
// Can be accessed like this
Iterable.findFirst
```

**Signature**

```ts
export declare const findFirst: {
  <A, B>(f: (a: NoInfer<A>, i: number) => Option<B>): (self: Iterable<A>) => Option<B>
  <A, B extends A>(refinement: (a: NoInfer<A>, i: number) => a is B): (self: Iterable<A>) => Option<B>
  <A>(predicate: (a: NoInfer<A>, i: number) => boolean): (self: Iterable<A>) => Option<A>
  <A, B>(self: Iterable<A>, f: (a: A, i: number) => Option<B>): Option<B>
  <A, B extends A>(self: Iterable<A>, refinement: (a: A, i: number) => a is B): Option<B>
  <A>(self: Iterable<A>, predicate: (a: A, i: number) => boolean): Option<A>
}
```
