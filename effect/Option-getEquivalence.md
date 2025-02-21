# getEquivalence

Creates an `Equivalence` instance for comparing `Option` values, using a
provided `Equivalence` for the inner type.

**Details**

This function takes an `Equivalence` instance for a specific type `A` and
produces an `Equivalence` instance for `Option<A>`. The resulting
`Equivalence` determines whether two `Option` values are equivalent:

- Two `None`s are considered equivalent.
- A `Some` and a `None` are not equivalent.
- Two `Some` values are equivalent if their inner values are equivalent
  according to the provided `Equivalence`.

To import and use `getEquivalence` from the "Option" module:

```ts
import * as Option from "effect/Option"
// Can be accessed like this
Option.getEquivalence
```

**Example**

```ts
// Title: Comparing Optional Numbers for Equivalence
import { Number, Option } from "effect"

const isEquivalent = Option.getEquivalence(Number.Equivalence)

console.log(isEquivalent(Option.none(), Option.none()))
// Output: true

console.log(isEquivalent(Option.none(), Option.some(1)))
// Output: false

console.log(isEquivalent(Option.some(1), Option.none()))
// Output: false

console.log(isEquivalent(Option.some(1), Option.some(2)))
// Output: false

console.log(isEquivalent(Option.some(1), Option.some(1)))
// Output: true
```

**Signature**

```ts
export declare const getEquivalence: <A>(isEquivalent: Equivalence.Equivalence<A>) => Equivalence.Equivalence<Option<A>>
```
