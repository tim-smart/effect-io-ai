Package: `effect`<br />
Module: `Optic`<br />

## Optic.Iso

A lossless, reversible conversion between types `S` and `A`.

When to use:
- You have a pair of functions that convert back and forth without losing
  information (e.g. `Record ↔ entries`, `Celsius ↔ Fahrenheit`).
- You want the strongest optic that can be composed with any other.

Behavior:
- `get(s)` always succeeds and returns an `A`.
- `set(a)` always succeeds and returns an `S`.
- `get(set(a)) === a` and `set(get(s))` equals `s` (round-trip laws).
- Extends both `Lens` and `Prism`.

**Example** (Celsius ↔ Fahrenheit)

```ts
import { Optic } from "effect"

const fahrenheit = Optic.makeIso<number, number>(
  (c) => c * 9 / 5 + 32,
  (f) => (f - 32) * 5 / 9
)

console.log(fahrenheit.get(100))
// Output: 212

console.log(fahrenheit.set(32))
// Output: 0
```

**See**

- `makeIso` — constructor
- `Lens` — when you only need a one-directional focus into a whole
- `Prism` — when the focus may not be present

**Signature**

```ts
export interface Iso<in out S, in out A> extends Lens<S, A>, Prism<S, A> {}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Optic.ts#L147)

Since v4.0.0