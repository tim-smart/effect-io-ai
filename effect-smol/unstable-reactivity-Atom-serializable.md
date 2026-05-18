Package: `effect`<br />
Module: `Atom`<br />

## Atom.serializable

Attaches serialization metadata to an atom using a schema and stable key.

The schema is converted to a JSON codec for synchronous encode/decode, and the
key is also used as the atom label when the atom does not already have one.

**Signature**

```ts
declare const serializable: { <R extends Atom<any>, S extends Schema.Codec<Type<R>, any>>(options: { readonly key: string; readonly schema: S; }): (self: R) => R & Serializable<S>; <R extends Atom<any>, S extends Schema.Codec<Type<R>, any>>(self: R, options: { readonly key: string; readonly schema: S; }): R & Serializable<S>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Atom.ts#L2379)

Since v4.0.0