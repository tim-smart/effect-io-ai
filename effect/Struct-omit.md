# omit

Create a new object by omitting properties of an existing object.

To import and use `omit` from the "Struct" module:

```ts
import * as Struct from "effect/Struct"
// Can be accessed like this
Struct.omit
```

**Example**

```ts
import { omit } from "effect/Struct"
import { pipe } from "effect/Function"

assert.deepStrictEqual(pipe({ a: "a", b: 1, c: true }, omit("c")), { a: "a", b: 1 })
assert.deepStrictEqual(omit({ a: "a", b: 1, c: true }, "c"), { a: "a", b: 1 })
```

**Signature**

```ts
export declare const omit: {
  <Keys extends PropertyKey[]>(
    ...keys: Keys
  ): <S extends { [K in Keys[number]]?: any }>(s: S) => Simplify<Omit<S, Keys[number]>>
  <S extends object, Keys extends (keyof S)[]>(s: S, ...keys: Keys): Simplify<Omit<S, Keys[number]>>
}
```
