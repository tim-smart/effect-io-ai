Package: `effect`<br />
Module: `Newtype`<br />

## Newtype.makeEquivalence

Lifts an `Equivalence` for the carrier type into an `Equivalence` for the
newtype.

**When to use**

Use when you need equality for newtype-wrapped values to behave like
equality for the wrapped carrier value, without manually unwrapping.

**Details**

The returned equivalence delegates to the provided carrier equivalence and
has zero runtime cost beyond the underlying equivalence check.

**Example** (Comparing newtypes)

```ts
import { Equivalence, Newtype } from "effect"

interface Label extends Newtype.Newtype<"Label", string> {}

const eq = Newtype.makeEquivalence<Label>(Equivalence.String)
const iso = Newtype.makeIso<Label>()

eq(iso.set("a"), iso.set("a")) // true
eq(iso.set("a"), iso.set("b")) // false
```

**See**

- `makeOrder` — lift an `Order` for the carrier

**Signature**

```ts
declare const makeEquivalence: <N extends Newtype.Any>(equivalence: Equivalence.Equivalence<Newtype.Carrier<N>>) => Equivalence.Equivalence<N>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Newtype.ts#L214)

Since v4.0.0