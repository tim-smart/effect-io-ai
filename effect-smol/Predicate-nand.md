Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.nand

Creates a predicate that returns `true` unless both predicates are `true`.

**When to use**

Use when you want the logical NAND of two conditions.

**Details**

- Returns the negation of `and`.

**Example** (NAND)

```ts
import { Predicate } from "effect"

const notBoth = Predicate.nand(Predicate.isString, Predicate.isNumber)

console.log(notBoth("a"))
```

**See**

- `and`
- `not`

**Signature**

```ts
declare const nand: { <A>(that: Predicate<A>): (self: Predicate<A>) => Predicate<A>; <A>(self: Predicate<A>, that: Predicate<A>): Predicate<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Predicate.ts#L1840)

Since v2.0.0