# match

Depending on the `Ordering` parameter given to it, returns a value produced by one of the 3 functions provided as parameters.

To import and use `match` from the "Ordering" module:

ts
import \* as Ordering from "effect/Ordering"
// Can be accessed like this
Ordering.match
undefined

**Example**

```ts
import { Ordering } from "effect"
import { constant } from "effect/Function"

const toMessage = Ordering.match({
  onLessThan: constant("less than"),
  onEqual: constant("equal"),
  onGreaterThan: constant("greater than")
})

assert.deepStrictEqual(toMessage(-1), "less than")
assert.deepStrictEqual(toMessage(0), "equal")
assert.deepStrictEqual(toMessage(1), "greater than")
```

**Signature**

```ts
export declare const match: {
  <A, B, C = B>(options: {
    readonly onLessThan: LazyArg<A>
    readonly onEqual: LazyArg<B>
    readonly onGreaterThan: LazyArg<C>
  }): (self: Ordering) => A | B | C
  <A, B, C = B>(
    o: Ordering,
    options: { readonly onLessThan: LazyArg<A>; readonly onEqual: LazyArg<B>; readonly onGreaterThan: LazyArg<C> }
  ): A | B | C
}
```
