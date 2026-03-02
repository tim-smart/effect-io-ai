Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.IndexSignature

An index signature (e.g. `[key: string]: number`) within an `Objects`.

- `parameter` is the key type representation.
- `type` is the value type representation.

**See**

- `Objects`

**Signature**

```ts
export interface IndexSignature {
  readonly parameter: Representation
  readonly type: Representation
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaRepresentation.ts#L458)

Since v4.0.0