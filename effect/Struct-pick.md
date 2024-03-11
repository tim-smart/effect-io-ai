# pick

Create a new object by picking properties of an existing object.

To import and use `pick` from the "Struct" module:

```ts
import * as Struct from "effect/Struct"
// Can be accessed like this
Struct.pick
```

**Example**

```ts
import { pick } from "effect/Struct"
import { pipe } from "effect/Function"

assert.deepStrictEqual(pipe({ a: "a", b: 1, c: true }, pick("a", "b")), { a: "a", b: 1 })
assert.deepStrictEqual(pick({ a: "a", b: 1, c: true }, "a", "b"), { a: "a", b: 1 })
```

**Signature**

```ts
export declare const pick: {
  <Keys extends PropertyKey[]>(
    ...keys: Keys
  ): <S extends { [K in Keys[number]]?: any }>(
    s: S
  ) => MatchRecord<S, { [K in Keys[number]]?: S[K] | undefined }, Simplify<Pick<S, Keys[number]>>>
  <S extends object, Keys extends (keyof S)[]>(
    s: S,
    ...keys: Keys
  ): MatchRecord<S, { [K in Keys[number]]?: S[K] | undefined }, Simplify<Pick<S, Keys[number]>>>
}
```
