Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.Predicate

A function that decides whether a value of type `A` satisfies a condition.

**When to use**

Use when you want a reusable boolean check for `A`, especially when you plan
to combine checks with `and`/`or` or pass a predicate to arrays
and iterables.

**Details**

A predicate returns `true` or `false` and never throws by itself. It does not
narrow types unless you use `Refinement`.

**Example** (Defining a predicate)

```ts
import { Predicate } from "effect"

const isPositive: Predicate.Predicate<number> = (n) => n > 0

console.log(isPositive(1))
```

**See**

- `Refinement`
- `mapInput`
- `and`

**Signature**

```ts
export interface Predicate<in A> {
  (a: A): boolean
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Predicate.ts#L46)

Since v2.0.0