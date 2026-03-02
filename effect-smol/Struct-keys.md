Package: `effect`<br />
Module: `Struct`<br />

## Struct.keys

Returns the string keys of a struct as a properly typed `Array<keyof S & string>`.

- Use instead of `Object.keys` when you want the return type narrowed to the
  known keys of the struct.
- Symbol keys are excluded; only string keys are returned.
- Does not mutate the input.

**Example** (Typed keys)

```ts
import { Struct } from "effect"

const user = { name: "Alice", age: 30, [Symbol.for("id")]: 1 }

const k: Array<"name" | "age"> = Struct.keys(user)
console.log(k) // ["name", "age"]
```

**See**

- `get` – access a single key's value
- `pick` – select a subset of keys into a new struct

**Signature**

```ts
declare const keys: <S extends object>(self: S) => Array<(keyof S) & string>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Struct.ts#L214)

Since v3.6.0