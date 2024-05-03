# getEquivalence

Given a struct of `Equivalence`s returns a new `Equivalence` that compares values of a struct
by applying each `Equivalence` to the corresponding property of the struct.

Alias of {@link Equivalence.struct}.

To import and use `getEquivalence` from the "Struct" module:

```ts
import * as Struct from "effect/Struct"
// Can be accessed like this
Struct.getEquivalence
```

**Example**

```ts
import { Struct, String, Number } from "effect"

const PersonEquivalence = Struct.getEquivalence({
  name: String.Equivalence,
  age: Number.Equivalence
})

assert.deepStrictEqual(PersonEquivalence({ name: "John", age: 25 }, { name: "John", age: 25 }), true)
assert.deepStrictEqual(PersonEquivalence({ name: "John", age: 25 }, { name: "John", age: 40 }), false)
```

**Signature**

```ts
export declare const getEquivalence: <R extends Record<string, Equivalence.Equivalence<any>>>(
  isEquivalents: R
) => Equivalence.Equivalence<{ readonly [K in keyof R]: [R[K]] extends [Equivalence.Equivalence<infer A>] ? A : never }>
```
