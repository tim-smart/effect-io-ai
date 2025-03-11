## getEquivalence

Given a struct of `Equivalence`s returns a new `Equivalence` that compares values of a struct
by applying each `Equivalence` to the corresponding property of the struct.

Alias of `Equivalence.struct`.

**Example**

```ts
import * as assert from "node:assert"
import { Struct, String, Number } from "effect"

const PersonEquivalence = Struct.getEquivalence({
  name: String.Equivalence,
  age: Number.Equivalence
})

assert.deepStrictEqual(
  PersonEquivalence({ name: "John", age: 25 }, { name: "John", age: 25 }),
  true
)
assert.deepStrictEqual(
  PersonEquivalence({ name: "John", age: 25 }, { name: "John", age: 40 }),
  false
)
```

**Signature**

```ts
declare const getEquivalence: <R extends Record<string, Equivalence.Equivalence<any>>>(isEquivalents: R) => Equivalence.Equivalence<{ readonly [K in keyof R]: [R[K]] extends [Equivalence.Equivalence<infer A>] ? A : never; }>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Struct.ts#L112)

Since v2.0.0