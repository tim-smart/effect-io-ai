# prependAll

Prepends the specified prefix iterable to the beginning of the specified iterable.

To import and use `prependAll` from the "Iterable" module:

```ts
import * as Iterable from "effect/Iterable"
// Can be accessed like this
Iterable.prependAll
```

**Example**

```ts
import { Iterable } from "effect"

assert.deepStrictEqual(Array.from(Iterable.prependAll([1, 2], ["a", "b"])), ["a", "b", 1, 2])
```

**Signature**

```ts
export declare const prependAll: {
  <B>(that: Iterable<B>): <A>(self: Iterable<A>) => Iterable<B | A>
  <A, B>(self: Iterable<A>, that: Iterable<B>): Iterable<A | B>
}
```
