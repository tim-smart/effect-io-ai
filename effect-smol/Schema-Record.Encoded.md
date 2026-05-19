Package: `effect`<br />
Module: `Schema`<br />

## Schema.Record.Encoded

Computes the encoded object type for a record schema from the key and value
schemas' encoded types.

**Details**
Encoded-side optionality and mutability on the value schema determine whether
the encoded record properties are optional or writable.

**Signature**

```ts
type Encoded<Key, Value> = Value extends
    { readonly "~encoded.optionality": "optional" } ?
    Value extends { readonly "~encoded.mutability": "mutable" } ? { [P in Key["Encoded"]]?: Value["Encoded"] }
    : { readonly [P in Key["Encoded"]]?: Value["Encoded"] }
    : Value extends { readonly "~encoded.mutability": "mutable" } ? { [P in Key["Encoded"]]: Value["Encoded"] }
    : { readonly [P in Key["Encoded"]]: Value["Encoded"] }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L2932)

Since v3.10.0