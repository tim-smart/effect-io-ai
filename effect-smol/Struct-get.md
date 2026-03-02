Package: `effect`<br />
Module: `Struct`<br />

## Struct.get

Retrieves the value at `key` from a struct.

- Use in a pipeline when you need to extract a single property.
- Does not mutate the input.
- The return type is narrowed to `S[K]`.

**Example** (Extracting a property in a pipeline)

```ts
import { pipe, Struct } from "effect"

const name = pipe({ name: "Alice", age: 30 }, Struct.get("name"))
console.log(name) // "Alice"
```

**See**

- `keys` – list all string keys of a struct
- `pick` – extract multiple properties into a new struct

**Signature**

```ts
declare const get: { <S extends object, const K extends keyof S>(key: K): (self: S) => S[K]; <S extends object, const K extends keyof S>(self: S, key: K): S[K]; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Struct.ts#L184)

Since v2.0.0