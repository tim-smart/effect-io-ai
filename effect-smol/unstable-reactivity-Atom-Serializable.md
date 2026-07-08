Package: `effect`<br />
Module: `Atom`<br />

## Atom.Serializable

Serialization metadata attached to an atom.

**Details**

The key identifies the atom in dehydrated state, and the encode/decode
functions convert between the atom value and the schema encoded value.

**Signature**

```ts
export interface Serializable<S extends Schema.Constraint> {
  readonly [SerializableTypeId]: {
    readonly key: string
    readonly encode: (value: S["Type"]) => S["Encoded"]
    readonly decode: (value: S["Encoded"]) => S["Type"]
  }
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Atom.ts#L2415)

Since v4.0.0