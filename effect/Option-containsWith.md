# containsWith

Returns a function that checks if an `Option` contains a specified value,
using a provided equivalence function.

**Details**

This function allows you to check whether an `Option` contains a specific
value. It uses an equivalence function `isEquivalent` to compare the value
inside the `Option` to the provided value. If the `Option` is `Some` and the
equivalence function returns `true`, the result is `true`. If the `Option` is
`None` or the values are not equivalent, the result is `false`.

To import and use `containsWith` from the "Option" module:

```ts
import * as Option from "effect/Option"
// Can be accessed like this
Option.containsWith
```

**Example**

```ts
import { Number, Option } from "effect"

const contains = Option.containsWith(Number.Equivalence)

console.log(Option.some(2).pipe(contains(2)))
// Output: true

console.log(Option.some(1).pipe(contains(2)))
// Output: false

console.log(Option.none().pipe(contains(2)))
// Output: false
```

**Signature**

```ts
export declare const containsWith: <A>(isEquivalent: (self: A, that: A) => boolean) => {
  (a: A): (self: Option<A>) => boolean
  (self: Option<A>, a: A): boolean
}
```
