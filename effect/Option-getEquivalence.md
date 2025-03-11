## getEquivalence

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
declare const getEquivalence: <A>(isEquivalent: Equivalence.Equivalence<A>) => Equivalence.Equivalence<Option<A>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Option.ts#L1690)

Since v2.0.0