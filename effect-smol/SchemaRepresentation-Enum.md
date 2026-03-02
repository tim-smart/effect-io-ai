Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.Enum

A TypeScript-style enum. Each entry is a `[name, value]` pair.

**Signature**

```ts
export interface Enum {
  readonly _tag: "Enum"
  readonly annotations?: Schema.Annotations.Annotations | undefined
  readonly enums: ReadonlyArray<readonly [string, string | number]>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaRepresentation.ts#L346)

Since v4.0.0