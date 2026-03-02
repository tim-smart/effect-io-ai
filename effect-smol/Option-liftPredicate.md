Package: `effect`<br />
Module: `Option`<br />

## Option.liftPredicate

Lifts a `Predicate` or `Refinement` into the `Option` context: returns
`Some(value)` when the predicate holds, `None` otherwise.

**When to use**

- Converting a boolean check into an `Option`-returning function
- Validating input and wrapping it in `Option`

**Behavior**

- `predicate(value)` is `true` → `Some(value)`
- `predicate(value)` is `false` → `None`
- Supports refinements for type narrowing

**Example** (Validating positive numbers)

```ts
import { Option } from "effect"

const parsePositive = Option.liftPredicate((n: number) => n > 0)

console.log(parsePositive(1))
// Output: { _id: 'Option', _tag: 'Some', value: 1 }

console.log(parsePositive(-1))
// Output: { _id: 'Option', _tag: 'None' }
```

**See**

- `filter` to apply a predicate to an existing `Option`
- `toRefinement` for the inverse direction

**Signature**

```ts
declare const liftPredicate: { <A, B extends A>(refinement: Refinement<A, B>): (a: A) => Option<B>; <B extends A, A = B>(predicate: Predicate<A>): (b: B) => Option<B>; <A, B extends A>(self: A, refinement: Refinement<A, B>): Option<B>; <B extends A, A = B>(self: B, predicate: Predicate<A>): Option<B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Option.ts#L2206)

Since v2.0.0