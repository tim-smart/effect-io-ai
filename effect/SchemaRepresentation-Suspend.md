Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.Suspend

A lazily resolved representation.

**Signature**

```ts
export interface Suspend {
  readonly _tag: "Suspend"
  readonly annotations?: Schema.Annotations.Annotations | undefined
  readonly checks: readonly []
  readonly thunk: Representation
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SchemaRepresentation.ts#L152)

Since v4.0.0