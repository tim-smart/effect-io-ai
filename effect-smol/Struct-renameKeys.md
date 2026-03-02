Package: `effect`<br />
Module: `Struct`<br />

## Struct.renameKeys

Renames keys in a struct using a static `{ oldKey: newKey }` mapping. Keys
not mentioned in the mapping are copied unchanged.

- Use for simple, declarative key renaming without custom logic.
- Does not mutate the input; returns a fresh object.
- For computed key names, use `evolveKeys` instead.

**Example** (Renaming keys)

```ts
import { pipe, Struct } from "effect"

const result = pipe(
  { firstName: "Alice", lastName: "Smith", age: 30 },
  Struct.renameKeys({ firstName: "first", lastName: "last" })
)
console.log(result) // { first: "Alice", last: "Smith", age: 30 }
```

**See**

- `evolveKeys` – rename keys using functions
- `evolveEntries` – rename keys and transform values

**Signature**

```ts
declare const renameKeys: { <S extends object, const M extends { readonly [K in keyof S]?: PropertyKey; }>(mapping: M): (self: S) => { [K in keyof S as K extends keyof M ? M[K] extends PropertyKey ? M[K] : K : K]: S[K]; }; <S extends object, const M extends { readonly [K in keyof S]?: PropertyKey; }>(self: S, mapping: M): { [K in keyof S as K extends keyof M ? M[K] extends PropertyKey ? M[K] : K : K]: S[K]; }; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Struct.ts#L488)

Since v4.0.0