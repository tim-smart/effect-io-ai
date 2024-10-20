# appendAll

Concatenates two iterables, combining their elements.

To import and use `appendAll` from the "Iterable" module:

```ts
import * as Iterable from "effect/Iterable"
// Can be accessed like this
Iterable.appendAll
```

**Signature**

```ts
export declare const appendAll: {
  <B>(that: Iterable<B>): <A>(self: Iterable<A>) => Iterable<A | B>
  <A, B>(self: Iterable<A>, that: Iterable<B>): Iterable<A | B>
}
```
