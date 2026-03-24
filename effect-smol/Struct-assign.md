Package: `effect`<br />
Module: `Struct`<br />

## Struct.assign

Merges two structs into a new struct. When both structs share a key, the
value from `that` (the second struct) wins.

- Use when you want `{ ...self, ...that }` with proper types.
- Does not mutate either input; returns a fresh object.
- The result type is `Simplify<Assign<S, O>>`.

**Example** (Merging structs with overlapping keys)

```ts
import { pipe, Struct } from "effect"

const defaults = { theme: "light", lang: "en" }
const overrides = { theme: "dark", fontSize: 14 }
const config = pipe(defaults, Struct.assign(overrides))
console.log(config) // { theme: "dark", lang: "en", fontSize: 14 }
```

**See**

- `Assign` – the type-level equivalent
- `evolve` – transform individual values instead of replacing them

**Signature**

```ts
declare const assign: { <O extends object>(that: O): <S extends object>(self: S) => Assign<S, O>; <O extends object, S extends object>(self: S, that: O): Assign<S, O>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Struct.ts#L311)

Since v4.0.0