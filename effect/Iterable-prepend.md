# prepend

Prepend an element to the front of an `Iterable`, creating a new `Iterable`.

To import and use `prepend` from the "Iterable" module:

```ts
import * as Iterable from "effect/Iterable"
// Can be accessed like this
Iterable.prepend
```

**Signature**

```ts
export declare const prepend: {
  <B>(head: B): <A>(self: Iterable<A>) => Iterable<B | A>
  <A, B>(self: Iterable<A>, head: B): Iterable<A | B>
}
```
