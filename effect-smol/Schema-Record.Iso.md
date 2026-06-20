Package: `effect`<br />
Module: `Schema`<br />

## Schema.Record.Iso

Computes the iso object type for a record schema from the key schema's `Iso`
keys and the value schema's `Iso` values.

**Signature**

```ts
type Iso<Key, Value> = Value extends
    { readonly "~type.optionality": "optional" } ?
    Value extends { readonly "~type.mutability": "mutable" } ? { [P in Key["Iso"]]?: Value["Iso"] }
    : { readonly [P in Key["Iso"]]?: Value["Iso"] }
    : Value extends { readonly "~type.mutability": "mutable" } ? { [P in Key["Iso"]]: Value["Iso"] }
    : { readonly [P in Key["Iso"]]: Value["Iso"] }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L3506)

Since v4.0.0