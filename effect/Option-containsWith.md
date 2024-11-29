# containsWith

Returns a function that checks if a `Option` contains a given value using a provided `isEquivalent` function.

To import and use `containsWith` from the "Option" module:

ts
import \* as Option from "effect/Option"
// Can be accessed like this
Option.containsWith
undefined

**Example**

```ts
import { pipe, Option, Number } from "effect"

assert.deepStrictEqual(pipe(Option.some(2), Option.containsWith(Number.Equivalence)(2)), true)
assert.deepStrictEqual(pipe(Option.some(1), Option.containsWith(Number.Equivalence)(2)), false)
assert.deepStrictEqual(pipe(Option.none(), Option.containsWith(Number.Equivalence)(2)), false)
```

**Signature**

```ts
export declare const containsWith: <A>(isEquivalent: (self: A, that: A) => boolean) => {
  (a: A): (self: Option<A>) => boolean
  (self: Option<A>, a: A): boolean
}
```
