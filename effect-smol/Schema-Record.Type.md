Package: `effect`<br />
Module: `Schema`<br />

## Schema.Record.Type

Computes the decoded object type for a record schema from its key and value
schemas.

**Details**

The key schema supplies the property keys and the value schema supplies each
property's decoded `Type`. Optional and mutable value schemas affect the
resulting property optionality and writability.

**Signature**

```ts
type Type<Key, Value> = Value extends
    { readonly "~type.optionality": "optional" } ?
    Value extends { readonly "~type.mutability": "mutable" } ? { [P in Key["Type"]]?: Value["Type"] }
    : { readonly [P in Key["Type"]]?: Value["Type"] }
    : Value extends { readonly "~type.mutability": "mutable" } ? { [P in Key["Type"]]: Value["Type"] }
    : { readonly [P in Key["Type"]]: Value["Type"] }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L3637)

Since v3.10.0