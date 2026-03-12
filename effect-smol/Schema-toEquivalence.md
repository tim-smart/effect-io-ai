Package: `effect`<br />
Module: `Schema`<br />

## Schema.toEquivalence

Derives an `Equivalence` from a schema. Two values are considered equal when
every field (and nested field) compares equal according to the schema
structure.

**Example** (Struct equivalence)

```ts
import { Schema } from "effect"

const eq = Schema.toEquivalence(Schema.Struct({ id: Schema.Number, name: Schema.String }))

console.log(eq({ id: 1, name: "Alice" }, { id: 1, name: "Alice" })) // true
console.log(eq({ id: 1, name: "Alice" }, { id: 2, name: "Alice" })) // false
```

**Signature**

```ts
declare const toEquivalence: <T>(schema: Schema<T>) => Equivalence.Equivalence<T>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L10391)

Since v4.0.0