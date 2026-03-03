Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.Code

A pair of TypeScript source strings for a schema: `runtime` is the
executable Schema expression, `Type` is the corresponding TypeScript type.

**See**

- `makeCode`
- `CodeDocument`

**Signature**

```ts
type Code = {
  readonly runtime: string
  readonly Type: string
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaRepresentation.ts#L2174)

Since v4.0.0