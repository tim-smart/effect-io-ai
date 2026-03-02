Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.or

Creates a predicate that returns `true` if either predicate is `true`.

When to use:
- You want to accept values that satisfy at least one condition.
- You want to combine refinements with union narrowing.

Behavior:
- Pure; does not mutate input.
- Short-circuits on the first `true`.
- For refinements, the output type is a union.

**Example** (Either condition)

```ts
import { Predicate } from "effect"

const isStringOrNumber = Predicate.or(Predicate.isString, Predicate.isNumber)

console.log(isStringOrNumber("a"))
```

See also: `and`, `xor`

**Signature**

```ts
declare const or: { <A, C extends A>(that: Refinement<A, C>): <B extends A>(self: Refinement<A, B>) => Refinement<A, B | C>; <A, B extends A, C extends A>(self: Refinement<A, B>, that: Refinement<A, C>): Refinement<A, B | C>; <A>(that: Predicate<A>): (self: Predicate<A>) => Predicate<A>; <A>(self: Predicate<A>, that: Predicate<A>): Predicate<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Predicate.ts#L1550)

Since v2.0.0