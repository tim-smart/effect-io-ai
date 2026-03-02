Package: `effect`<br />
Module: `Struct`<br />

## Struct.pick

Creates a new struct containing only the specified keys.

- Use to narrow a struct down to a subset of its properties.
- Does not mutate the input; returns a fresh object.
- Keys not present in the struct are silently ignored.

**Example** (Selecting specific properties)

```ts
import { pipe, Struct } from "effect"

const user = { name: "Alice", age: 30, admin: true }
const nameAndAge = pipe(user, Struct.pick(["name", "age"]))
console.log(nameAndAge) // { name: "Alice", age: 30 }
```

**See**

- `omit` – the inverse (exclude keys instead)
- `get` – extract a single value

**Signature**

```ts
declare const pick: { <S extends object, const Keys extends ReadonlyArray<keyof S>>(keys: Keys): (self: S) => Pick<S, Keys[number]>; <S extends object, const Keys extends ReadonlyArray<keyof S>>(self: S, keys: Keys): Pick<S, Keys[number]>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Struct.ts#L240)

Since v2.0.0