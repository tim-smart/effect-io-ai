Package: `effect`<br />
Module: `Struct`<br />

## Struct.omit

Creates a new struct with the specified keys removed.

- Use to exclude sensitive or irrelevant fields from a struct.
- Does not mutate the input; returns a fresh object.
- Keys not present in the struct are silently ignored.

**Example** (Removing a property)

```ts
import { pipe, Struct } from "effect"

const user = { name: "Alice", age: 30, password: "secret" }
const safe = pipe(user, Struct.omit(["password"]))
console.log(safe) // { name: "Alice", age: 30 }
```

**See**

- `pick` – the inverse (keep only specified keys)

**Signature**

```ts
declare const omit: { <S extends object, const Keys extends ReadonlyArray<keyof S>>(keys: Keys): (self: S) => Omit<S, Keys[number]>; <S extends object, const Keys extends ReadonlyArray<keyof S>>(self: S, keys: Keys): Omit<S, Keys[number]>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Struct.ts#L272)

Since v2.0.0