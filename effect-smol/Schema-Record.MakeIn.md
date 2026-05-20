Package: `effect`<br />
Module: `Schema`<br />

## Schema.Record.MakeIn

Computes the input object type accepted when constructing a record value.

**Details**

Keys use the key schema's `~type.make` type and values use the value schema's
`~type.make` type. Value optionality and mutability determine whether
properties are optional or writable.

**Signature**

```ts
type MakeIn<Key, Value> = Value extends
    { readonly "~encoded.optionality": "optional" } ?
    Value extends { readonly "~encoded.mutability": "mutable" } ? { [P in Key["~type.make"]]?: Value["~type.make"] }
    : { readonly [P in Key["~type.make"]]?: Value["~type.make"] }
    : Value extends { readonly "~encoded.mutability": "mutable" } ? { [P in Key["~type.make"]]: Value["~type.make"] }
    : { readonly [P in Key["~type.make"]]: Value["~type.make"] }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L3044)

Since v4.0.0