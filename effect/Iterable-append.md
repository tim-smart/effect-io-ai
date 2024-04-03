# append

Append an element to the end of an `Iterable`, creating a new `Iterable`.

To import and use `append` from the "Iterable" module:

```ts
import * as Iterable from "effect/Iterable"
// Can be accessed like this
Iterable.append
```

**Signature**

```ts
export declare const append: {
  <B>(last: B): <A>(self: Iterable<A>) => Iterable<B | A>
  <A, B>(self: Iterable<A>, last: B): Iterable<A | B>
}
```
