# flatMap

Applies a function to each element in an Iterable and returns a new Iterable containing the concatenated mapped elements.

To import and use `flatMap` from the "Iterable" module:

```ts
import * as Iterable from "effect/Iterable"
// Can be accessed like this
Iterable.flatMap
```

**Signature**

```ts
export declare const flatMap: {
  <A, B>(f: (a: NoInfer<A>, i: number) => Iterable<B>): (self: Iterable<A>) => Iterable<B>
  <A, B>(self: Iterable<A>, f: (a: NoInfer<A>, i: number) => Iterable<B>): Iterable<B>
}
```
