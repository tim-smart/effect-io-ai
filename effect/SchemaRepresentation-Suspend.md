Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.Suspend

A lazily resolved representation used for recursive schemas.

**Details**

`thunk` points to the actual representation, possibly via a
`Reference`. `checks` is always empty on `Suspend` nodes.

**See**

- `Reference`

**Signature**

```ts
export interface Suspend {
  readonly _tag: "Suspend"
  readonly annotations?: Schema.Annotations.Annotations | undefined
  readonly checks: readonly []
  readonly thunk: Representation
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SchemaRepresentation.ts#L74)

Since v4.0.0