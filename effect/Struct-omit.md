Package: `effect`<br />
Module: `Struct`<br />

## Struct.omit

Create a new object by omitting properties of an existing object.

**Example**

```ts
import * as assert from "node:assert"
import { pipe, Struct } from "effect"

assert.deepStrictEqual(pipe({ a: "a", b: 1, c: true }, Struct.omit("c")), { a: "a", b: 1 })
assert.deepStrictEqual(Struct.omit({ a: "a", b: 1, c: true }, "c"), { a: "a", b: 1 })
```

**Signature**

```ts
declare const omit: { <Keys extends Array<PropertyKey>>(...keys: Keys): <S extends { [K in Keys[number]]?: any; }>(s: S) => Simplify<Omit<S, Keys[number]>>; <S extends object, Keys extends Array<keyof S>>(s: S, ...keys: Keys): Simplify<Omit<S, Keys[number]>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Struct.ts#L64)

Since v2.0.0