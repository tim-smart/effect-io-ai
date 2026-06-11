Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.eqv

Creates a predicate that returns `true` when both predicates agree.

**When to use**

Use when you want to check equivalence of two `Predicate`s.

**Details**

Returns `true` when both results are equal.

**Example** (Equivalence)

```ts
import { Predicate } from "effect"

const isEven = (n: number) => n % 2 === 0
const same = Predicate.eqv(isEven, isEven)

console.log(same(3))
```

**See**

- `xor`

**Signature**

```ts
declare const eqv: { <A>(that: Predicate<A>): (self: Predicate<A>) => Predicate<A>; <A>(self: Predicate<A>, that: Predicate<A>): Predicate<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Predicate.ts#L1687)

Since v2.0.0