# splitWhere

Splits this iterable on the first element that matches this predicate.
Returns a tuple containing two arrays: the first one is before the match, and the second one is from the match onward.

To import and use `splitWhere` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from "effect/ReadonlyArray"
// Can be accessed like this
ReadonlyArray.splitWhere
```

**Signature**

```ts
export declare const splitWhere: {
  <A>(predicate: (a: NoInfer<A>, i: number) => boolean): (self: Iterable<A>) => [beforeMatch: A[], fromMatch: A[]]
  <A>(self: Iterable<A>, predicate: (a: A, i: number) => boolean): [beforeMatch: A[], fromMatch: A[]]
}
```
