Package: `effect`<br />
Module: `Schema`<br />

## Schema.extendTo

Adds derived fields to a struct schema during decoding.

Each new field is derived from the decoded struct value via a function that
returns `Option`. On encoding the derived fields are stripped. This allows
computed or enriched fields to live in the decoded type without appearing in
the encoded form.

**Example** (Add a computed `fullName` field)

```ts
import { Option, Schema } from "effect"

const Person = Schema.Struct({ first: Schema.String, last: Schema.String })
const Extended = Person.pipe(
  Schema.extendTo(
    { fullName: Schema.String },
    { fullName: (p) => Option.some(`${p.first} ${p.last}`) }
  )
)

const alice = Schema.decodeUnknownSync(Extended)({ first: "Alice", last: "Smith" })
console.log(alice.fullName)
// Alice Smith
```

**Signature**

```ts
declare const extendTo: <S extends Struct<Struct.Fields>, const Fields extends Struct.Fields>(fields: Fields, derive: { readonly [K in keyof Fields]: (s: S["Type"]) => Option_.Option<Fields[K]["Type"]>; }) => (self: S) => decodeTo<Struct<Simplify<{ [K in keyof S["fields"]]: toType<S["fields"][K]>; } & Fields>>, S>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L2615)

Since v4.0.0