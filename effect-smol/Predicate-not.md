Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.not

Negates a predicate.

When to use:
- You want the inverse of an existing predicate.

Behavior:
- Pure; does not mutate input.
- Returns a new predicate that flips the boolean result.

**Example** (Negate)

```ts
import { Predicate } from "effect"

const isNotString = Predicate.not(Predicate.isString)

console.log(isNotString(1))
```

See also: `and`, `or`, `xor`

**Signature**

```ts
declare const not: <A>(self: Predicate<A>) => Predicate<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Predicate.ts#L1519)

Since v2.0.0