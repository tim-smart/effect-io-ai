Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.Predicate

A function that decides whether a value of type `A` satisfies a condition.

When to use:
- You want a reusable boolean check for `A`.
- You plan to combine checks with `and`/`or`.
- You want a simple filter predicate for arrays or iterables.

Behavior:
- Pure function; does not mutate input.
- Returns `true` or `false`; never throws by itself.
- Does not narrow types unless you use `Refinement`.

**Example** (Define a predicate)

```ts
import { Predicate } from "effect"

const isPositive: Predicate.Predicate<number> = (n) => n > 0

console.log(isPositive(1))
```

See also: `Refinement`, `mapInput`, `and`

**Signature**

```ts
export interface Predicate<in A> {
  (a: A): boolean
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Predicate.ts#L74)

Since v2.0.0