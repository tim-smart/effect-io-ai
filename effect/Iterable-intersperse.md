# intersperse

Places an element in between members of an `Iterable`.
If the input is a non-empty array, the result is also a non-empty array.

To import and use `intersperse` from the "Iterable" module:

```ts
import * as Iterable from "effect/Iterable"
// Can be accessed like this
Iterable.intersperse
```

**Signature**

```ts
export declare const intersperse: {
  <B>(middle: B): <A>(self: Iterable<A>) => Iterable<A | B>
  <A, B>(self: Iterable<A>, middle: B): Iterable<A | B>
}
```
