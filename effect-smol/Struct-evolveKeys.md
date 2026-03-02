Package: `effect`<br />
Module: `Struct`<br />

## Struct.evolveKeys

Selectively transforms keys of a struct using per-key functions. Keys without
a corresponding function are copied unchanged.

- Use when you need computed key names (e.g., uppercasing, prefixing).
- Each transform function receives the key name and must return a new
  `PropertyKey`.
- Does not mutate the input; returns a fresh object.

**Example** (Renaming keys with functions)

```ts
import { pipe, Struct } from "effect"

const result = pipe(
  { name: "Alice", age: 30 },
  Struct.evolveKeys({
    name: (k) => k.toUpperCase()
  })
)
console.log(result) // { NAME: "Alice", age: 30 }
```

**See**

- `renameKeys` – rename keys with a static mapping
- `evolve` – transform values instead of keys
- `evolveEntries` – transform both keys and values

**Signature**

```ts
declare const evolveKeys: { <S extends object, E extends KeyEvolver<S>>(e: E): (self: S) => KeyEvolved<S, E>; <S extends object, E extends KeyEvolver<S>>(self: S, e: E): KeyEvolved<S, E>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Struct.ts#L400)

Since v4.0.0