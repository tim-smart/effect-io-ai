Package: `effect`<br />
Module: `Option`<br />

## Option.liftPredicate

Lifts a `Predicate` or `Refinement` into the `Option` context, returning a
`Some` of the input value if the predicate is satisfied, or `None` otherwise.

**Details**

This function transforms a `Predicate` (or a more specific `Refinement`) into
a function that produces an `Option`. If the predicate evaluates to `true`,
the input value is wrapped in a `Some`. If the predicate evaluates to
`false`, the result is `None`.

**Example**

```ts
import { Option } from "effect"

// Check if a number is positive
const isPositive = (n: number) => n > 0

//      ┌─── (b: number) => Option<number>
//      ▼
const parsePositive = Option.liftPredicate(isPositive)

console.log(parsePositive(1))
// Output: { _id: 'Option', _tag: 'Some', value: 1 }

console.log(parsePositive(-1))
// OUtput: { _id: 'Option', _tag: 'None' }
```

**Signature**

```ts
declare const liftPredicate: { <A, B extends A>(refinement: Refinement<A, B>): (a: A) => Option<B>; <B extends A, A = B>(predicate: Predicate<A>): (b: B) => Option<B>; <A, B extends A>(self: A, refinement: Refinement<A, B>): Option<B>; <B extends A, A = B>(self: B, predicate: Predicate<A>): Option<B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Option.ts#L1805)

Since v2.0.0