# reduceCompact

Reduces an `Iterable` of `Option<A>` to a single value of type `B`, elements that are `None` are ignored.

To import and use `reduceCompact` from the "Option" module:

ts
import \* as Option from "effect/Option"
// Can be accessed like this
Option.reduceCompact
undefined

**Example**

```ts
import { pipe, Option } from "effect"

const iterable = [Option.some(1), Option.none(), Option.some(2), Option.none()]
assert.deepStrictEqual(
  pipe(
    iterable,
    Option.reduceCompact(0, (b, a) => b + a)
  ),
  3
)
```

**Signature**

```ts
export declare const reduceCompact: {
  <B, A>(b: B, f: (b: B, a: A) => B): (self: Iterable<Option<A>>) => B
  <A, B>(self: Iterable<Option<A>>, b: B, f: (b: B, a: A) => B): B
}
```
