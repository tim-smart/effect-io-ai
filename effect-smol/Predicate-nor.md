Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.nor

Creates a predicate that returns `true` when neither predicate is `true`.

**When to use**

Use when you want to combine two `Predicate`s with logical NOR semantics.

**Details**

Returns the negation of `or`.

**Example** (NOR)

```ts
import { Predicate } from "effect"

const neither = Predicate.nor(Predicate.isString, Predicate.isNumber)

console.log(neither(true))
```

**See**

- `or`
- `not`

**Signature**

```ts
declare const nor: { <A>(that: Predicate<A>): (self: Predicate<A>) => Predicate<A>; <A>(self: Predicate<A>, that: Predicate<A>): Predicate<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Predicate.ts#L1811)

Since v2.0.0