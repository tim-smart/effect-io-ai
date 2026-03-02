Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.and

Creates a predicate that returns `true` only if both predicates are `true`.

When to use:
- You want to accept values that satisfy multiple conditions.
- You want to combine refinements with intersection narrowing.

Behavior:
- Pure; does not mutate input.
- Short-circuits on the first `false`.
- For refinements, the output type is an intersection.

**Example** (Both conditions)

```ts
import { Predicate } from "effect"

const hasAAndB = Predicate.and(
  Predicate.hasProperty("a"),
  Predicate.hasProperty("b")
)

const input: unknown = JSON.parse(`{"a":1,"b":"ok"}`)
if (hasAAndB(input)) {
  // input has both properties at this point
  const a = input.a
  const b = input.b
}
```

See also: `or`, `not`

**Signature**

```ts
declare const and: { <A, C extends A>(that: Refinement<A, C>): <B extends A>(self: Refinement<A, B>) => Refinement<A, B & C>; <A, B extends A, C extends A>(self: Refinement<A, B>, that: Refinement<A, C>): Refinement<A, B & C>; <A>(that: Predicate<A>): (self: Predicate<A>) => Predicate<A>; <A>(self: Predicate<A>, that: Predicate<A>): Predicate<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Predicate.ts#L1592)

Since v2.0.0