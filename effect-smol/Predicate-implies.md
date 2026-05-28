Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.implies

Creates a predicate representing logical implication: if `antecedent`, then `consequent`.

**When to use**

Use when you want a rule that only applies when a precondition holds.
- You model constraints like "if A then B".

**Details**

- Returns `true` when the antecedent is `false`.

**Example** (Implication)

```ts
import { Predicate } from "effect"

const isAdult = (age: number) => age >= 18
const canVote = (age: number) => age >= 18
const implies = Predicate.implies(isAdult, canVote)

console.log(implies(16))
```

**See**

- `and`
- `or`

**Signature**

```ts
declare const implies: { <A>(consequent: Predicate<A>): (antecedent: Predicate<A>) => Predicate<A>; <A>(antecedent: Predicate<A>, consequent: Predicate<A>): Predicate<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Predicate.ts#L1772)

Since v2.0.0