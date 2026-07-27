Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.Enum

An enum representation.

**Details**

Enum members are stored as native string or number values. Persistent
codecs add an explicit type discriminator when encoding them.

**Signature**

```ts
export interface Enum extends Keyword<"Enum"> {
  readonly enums: ReadonlyArray<readonly [string, string | number]>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SchemaRepresentation.ts#L300)

Since v4.0.0