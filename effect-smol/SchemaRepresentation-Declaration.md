Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.Declaration

A custom type declaration (e.g. `Date`, `Option`, `ReadonlySet`).

- Use when inspecting or transforming non-primitive schema types.
- `typeParameters` holds the inner type arguments (e.g. the `A` in `Option<A>`).
- `encodedSchema` is the fallback representation when no `Reviver`
  recognizes this declaration.
- `annotations.typeConstructor` identifies the declaration kind (e.g.
  `{ _tag: "effect/Option" }`).

**See**

- `Reviver`
- `toSchemaDefaultReviver`

**Signature**

```ts
export interface Declaration {
  readonly _tag: "Declaration"
  readonly annotations?: Schema.Annotations.Annotations | undefined
  readonly typeParameters: ReadonlyArray<Representation>
  readonly checks: ReadonlyArray<Check<DeclarationMeta>>
  readonly encodedSchema: Representation
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaRepresentation.ts#L122)

Since v4.0.0