Package: `effect`<br />
Module: `Schema`<br />

## Schema.encodeKeys

Renames struct keys in the encoded form without changing the decoded type.

Takes a partial mapping `{ decodedKey: encodedKey }` and produces a
transformation schema that decodes from the renamed keys and encodes back to
the renamed keys. Keys not present in the mapping are left unchanged.

**Example** (Rename `name` to `full_name` in the encoded form)

```ts
import { Schema } from "effect"

const Person = Schema.Struct({ name: Schema.String, age: Schema.Number })
const Encoded = Person.pipe(Schema.encodeKeys({ name: "full_name" }))

// Decodes { full_name: "Alice", age: 30 } → { name: "Alice", age: 30 }
const alice = Schema.decodeUnknownSync(Encoded)({ full_name: "Alice", age: 30 })
console.log(alice)
// { name: 'Alice', age: 30 }
```

**Signature**

```ts
declare const encodeKeys: <S extends Top & { readonly fields: Struct.Fields; }, const M extends { readonly [K in keyof S["fields"]]?: PropertyKey; }>(mapping: M) => (self: S) => encodeKeys<S, M>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L2560)

Since v4.0.0