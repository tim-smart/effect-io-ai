Package: `effect`<br />
Module: `Struct`<br />

## Struct.makeEquivalence

Creates an `Equivalence` for a struct by providing an `Equivalence` for each
property. Two structs are equivalent when all their corresponding properties
are equivalent.

Alias of `Equivalence.Struct`.

- Use when you need to compare structs property-by-property.
- Each property's equivalence is checked independently; all must return
  `true` for the overall result to be `true`.

**Example** (Comparing structs for equivalence)

```ts
import { Equivalence, Struct } from "effect"

const PersonEquivalence = Struct.makeEquivalence({
  name: Equivalence.strictEqual<string>(),
  age: Equivalence.strictEqual<number>()
})

console.log(PersonEquivalence({ name: "Alice", age: 30 }, { name: "Alice", age: 30 }))
// true
console.log(PersonEquivalence({ name: "Alice", age: 30 }, { name: "Bob", age: 30 }))
// false
```

**See**

- `makeOrder` – create an `Order` for structs

**Signature**

```ts
declare const makeEquivalence: <R extends Record<string, Equivalence.Equivalence<any>>>(fields: R) => Equivalence.Equivalence<{ readonly [K in keyof R]: [R[K]] extends [Equivalence.Equivalence<infer A>] ? A : never; }>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Struct.ts#L532)

Since v2.0.0