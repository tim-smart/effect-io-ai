Package: `effect`<br />
Module: `EntityType`<br />

## EntityType.make

Brands a string as an `EntityType`.

**When to use**

Use to brand a stable entity family name before passing it to cluster APIs
that require an `EntityType`, such as entity addresses.

**Details**

The returned value is the same runtime string with the `EntityType` brand
applied by TypeScript.

**Gotchas**

`make` only applies the brand at the type level; it does not validate,
normalize, or check uniqueness. Use the `EntityType` schema when you need
schema-based decoding or validation, and keep names stable because the exact
string participates in routing identity.

**See**

- `EntityType` for schema-based decoding, validation, and encoding of entity type names

**Signature**

```ts
declare const make: (value: string) => EntityType
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/EntityType.ts#L52)

Since v4.0.0