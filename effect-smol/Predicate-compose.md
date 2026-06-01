Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.compose

Composes two predicates or refinements into one.

**When to use**

Use when you want to compose two `Predicate` checks in sequence, especially
when chaining refinements for progressive narrowing.

**Details**

For refinements, the output type is narrowed by both checks. Evaluation
short-circuits on the first `false`.

**Example** (Compose refinements)

```ts
import { Predicate } from "effect"

const isNumber: Predicate.Refinement<unknown, number> = (u): u is number => typeof u === "number"
const isInteger: Predicate.Refinement<number, number> = (n): n is number => Number.isInteger(n)

const isIntegerNumber = Predicate.compose(isNumber, isInteger)

console.log(isIntegerNumber(1))
```

**See**

- `and`
- `Refinement`

**Signature**

```ts
declare const compose: { <A, B extends A, C extends B>(bc: Refinement<B, C>): (ab: Refinement<A, B>) => Refinement<A, C>; <A, B extends A>(bc: Predicate<NoInfer<B>>): (ab: Refinement<A, B>) => Refinement<A, B>; <A, B extends A, C extends B>(ab: Refinement<A, B>, bc: Refinement<B, C>): Refinement<A, C>; <A, B extends A>(ab: Refinement<A, B>, bc: Predicate<NoInfer<B>>): Refinement<A, B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Predicate.ts#L1466)

Since v2.0.0