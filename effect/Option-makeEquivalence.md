Package: `effect`<br />
Module: `Option`<br />

## Option.makeEquivalence

Creates an `Equivalence` for `Option<A>` from an `Equivalence` for `A`.

**When to use**

Use when you need equality to treat two `None` values as equal and compare
two `Some` values with a supplied equality rule.

**Details**

- `None` vs `None` → `true`
- `Some` vs `None` (or vice versa) → `false`
- `Some(a)` vs `Some(b)` → delegates to the provided `Equivalence`

**Example** (Comparing Options)

```ts
import { Equivalence, Option } from "effect"

const eq = Option.makeEquivalence(Equivalence.strictEqual<number>())

console.log(eq(Option.some(1), Option.some(1)))
// Output: true

console.log(eq(Option.some(1), Option.some(2)))
// Output: false

console.log(eq(Option.none(), Option.none()))
// Output: true
```

**Signature**

```ts
declare const makeEquivalence: <A>(isEquivalent: Equivalence.Equivalence<A>) => Equivalence.Equivalence<Option<A>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Option.ts#L2065)

Since v4.0.0