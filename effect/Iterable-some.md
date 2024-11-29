# some

Check if a predicate holds true for some `Iterable` element.

To import and use `some` from the "Iterable" module:

ts
import \* as Iterable from "effect/Iterable"
// Can be accessed like this
Iterable.some
undefined

**Signature**

```ts
export declare const some: {
  <A>(predicate: (a: A, i: number) => boolean): (self: Iterable<A>) => boolean
  <A>(self: Iterable<A>, predicate: (a: A, i: number) => boolean): boolean
}
```
