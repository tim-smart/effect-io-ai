Package: `effect`<br />
Module: `Struct`<br />

## Struct.evolveKeys

Transforms keys of a struct selectively using per-key functions. Keys without
a corresponding function are copied unchanged.

**When to use**

Use when you need computed key names, such as uppercasing or prefixing.

**Details**

Each transform function receives the key name and must return a new
`PropertyKey`.

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

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Struct.ts#L373)

Since v4.0.0