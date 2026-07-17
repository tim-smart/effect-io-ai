Package: `effect`<br />
Module: `Optic`<br />

## Optic.makeIso

Creates an `Iso` from a pair of conversion functions.

**When to use**

Use when you have two pure conversion functions that preserve all information
between `S` and `A`.

**Details**

The returned optic can be composed with any other optic.

**Example** (Wrapping and unwrapping a branded type)

```ts
import { Optic } from "effect"

type Meters = { readonly value: number }
const meters = Optic.makeIso<Meters, number>(
  (m) => m.value,
  (n) => ({ value: n })
)

console.log(meters.get({ value: 100 }))
// Output: 100

console.log(meters.set(42))
// Output: { value: 42 }
```

**See**

- `Iso` — the type this function returns
- `id` — identity iso (no conversion)

**Signature**

```ts
declare const makeIso: <S, A>(get: (s: S) => A, set: (a: A) => S) => Iso<S, A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Optic.ts#L104)

Since v4.0.0