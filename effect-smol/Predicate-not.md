Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.not

Negates a predicate.

**When to use**

Use when you want the inverse of an existing predicate.

**Details**

- Returns a new predicate that flips the boolean result.

**Example** (Negate)

```ts
import { Predicate } from "effect"

const isNotString = Predicate.not(Predicate.isString)

console.log(isNotString(1))
```

**See**

- `and`
- `or`
- `xor`

**Signature**

```ts
declare const not: <A>(self: Predicate<A>) => Predicate<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Predicate.ts#L1597)

Since v2.0.0