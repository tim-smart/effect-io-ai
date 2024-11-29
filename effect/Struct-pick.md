# pick

Create a new object by picking properties of an existing object.

To import and use `pick` from the "Struct" module:

ts
import \* as Struct from "effect/Struct"
// Can be accessed like this
Struct.pick
undefined

**Example**

```ts
import { pipe, Struct } from "effect"

assert.deepStrictEqual(pipe({ a: "a", b: 1, c: true }, Struct.pick("a", "b")), { a: "a", b: 1 })
assert.deepStrictEqual(Struct.pick({ a: "a", b: 1, c: true }, "a", "b"), { a: "a", b: 1 })
```

**Signature**

```ts
export declare const pick: {
  <Keys extends Array<PropertyKey>>(
    ...keys: Keys
  ): <S extends { [K in Keys[number]]?: any }>(
    s: S
  ) => MatchRecord<S, { [K in Keys[number]]?: S[K] }, Simplify<Pick<S, Keys[number]>>>
  <S extends object, Keys extends Array<keyof S>>(
    s: S,
    ...keys: Keys
  ): MatchRecord<S, { [K in Keys[number]]?: S[K] }, Simplify<Pick<S, Keys[number]>>>
}
```
