Package: `effect`<br />
Module: `Struct`<br />

## Struct.evolve

Selectively transforms values of a struct using per-key functions. Keys
without a corresponding function are copied unchanged.

- Use when you want to update specific fields while keeping the rest intact.
- Does not mutate the input; returns a fresh object.
- Each transform function receives the current value and returns the new
  value; the return type can differ from the input type.

**Example** (Transforming selected values)

```ts
import { pipe, Struct } from "effect"

const result = pipe(
  { name: "alice", age: 30, active: true },
  Struct.evolve({
    name: (s) => s.toUpperCase(),
    age: (n) => n + 1
  })
)
console.log(result) // { name: "ALICE", age: 31, active: true }
```

**See**

- `evolveKeys` – transform keys instead of values
- `evolveEntries` – transform both keys and values
- `map` – apply the same transformation to all values

**Signature**

```ts
declare const evolve: { <S extends object, E extends Evolver<S>>(e: E): (self: S) => Evolved<S, E>; <S extends object, E extends Evolver<S>>(self: S, e: E): Evolved<S, E>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Struct.ts#L354)

Since v2.0.0