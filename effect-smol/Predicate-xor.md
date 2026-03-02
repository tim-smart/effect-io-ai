Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.xor

Creates a predicate that returns `true` if exactly one predicate is `true`.

When to use:
- You want an exclusive-or between two conditions.

Behavior:
- Pure; does not mutate input.
- Returns `true` when results differ.

**Example** (Exclusive or)

```ts
import { Predicate } from "effect"

const isEven = (n: number) => n % 2 === 0
const isPositive = (n: number) => n > 0
const either = Predicate.xor(isEven, isPositive)

console.log(either(-2))
```

See also: `or`, `and`

**Signature**

```ts
declare const xor: { <A>(that: Predicate<A>): (self: Predicate<A>) => Predicate<A>; <A>(self: Predicate<A>, that: Predicate<A>): Predicate<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Predicate.ts#L1626)

Since v2.0.0