Package: `effect`<br />
Module: `Struct`<br />

## Struct.evolveEntries

Selectively transforms both keys and values of a struct. Each per-key
function receives `(key, value)` and must return a `[newKey, newValue]`
tuple. Keys without a corresponding function are copied unchanged.

- Use when you need to rename a key and change its value in one step.
- Does not mutate the input; returns a fresh object.
- The return type is fully tracked at the type level.

**Example** (Transforming keys and values together)

```ts
import { pipe, Struct } from "effect"

const result = pipe(
  { amount: 100, label: "total" },
  Struct.evolveEntries({
    amount: (k, v) => [`${k}Cents`, v * 100],
    label: (k, v) => [k, v.toUpperCase()]
  })
)
console.log(result) // { amountCents: 10000, label: "TOTAL" }
```

**See**

- `evolve` – transform values only
- `evolveKeys` – transform keys only

**Signature**

```ts
declare const evolveEntries: { <S extends object, E extends EntryEvolver<S>>(e: E): (self: S) => EntryEvolved<S, E>; <S extends object, E extends EntryEvolver<S>>(self: S, e: E): EntryEvolved<S, E>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Struct.ts#L452)

Since v4.0.0