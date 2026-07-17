Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.xor

Creates a predicate that returns `true` if exactly one predicate is `true`.

**When to use**

Use when you want to combine two `Predicate`s with exclusive-or semantics.

**Details**

Returns `true` when results differ.

**Example** (Checking exclusive-or conditions)

```ts
import { Predicate } from "effect"

const isEven = (n: number) => n % 2 === 0
const isPositive = (n: number) => n > 0
const either = Predicate.xor(isEven, isPositive)

console.log(either(-2))
```

**See**

- `or`
- `and`

**Signature**

```ts
declare const xor: { <A>(that: Predicate<A>): (self: Predicate<A>) => Predicate<A>; <A>(self: Predicate<A>, that: Predicate<A>): Predicate<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Predicate.ts#L1656)

Since v2.0.0