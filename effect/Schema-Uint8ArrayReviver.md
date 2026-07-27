Package: `effect`<br />
Module: `Schema`<br />

## Schema.Uint8ArrayReviver

Reviver for persisted `Uint8Array` declarations.

**When to use**

Use when reconstructing documents that may contain the `Uint8Array` schema.

**See**

- `Uint8Array` for the corresponding schema

**Signature**

```ts
declare const Uint8ArrayReviver: SchemaRepresentation.DeclarationReviver<null>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L13290)

Since v4.0.0