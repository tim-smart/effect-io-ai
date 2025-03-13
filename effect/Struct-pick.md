Package: `effect`<br />
Module: `Struct`<br />

## Struct.pick

Create a new object by picking properties of an existing object.

**Example**

```ts
import * as assert from "node:assert"
import { pipe, Struct } from "effect"

assert.deepStrictEqual(pipe({ a: "a", b: 1, c: true }, Struct.pick("a", "b")), { a: "a", b: 1 })
assert.deepStrictEqual(Struct.pick({ a: "a", b: 1, c: true }, "a", "b"), { a: "a", b: 1 })
```

**Signature**

```ts
declare const pick: { <Keys extends Array<PropertyKey>>(...keys: Keys): <S extends { [K in Keys[number]]?: any; }>(s: S) => MatchRecord<S, { [K in Keys[number]]?: S[K]; }, Simplify<Pick<S, Keys[number]>>>; <S extends object, Keys extends Array<keyof S>>(s: S, ...keys: Keys): MatchRecord<S, { [K in Keys[number]]?: S[K]; }, Simplify<Pick<S, Keys[number]>>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Struct.ts#L27)

Since v2.0.0