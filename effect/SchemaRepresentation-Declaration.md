Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.Declaration

A custom type declaration, such as `Date`, `Option`, or `ReadonlySet`.

**When to use**

Use when inspecting or transforming non-primitive schema types.

**Details**

`typeParameters` holds the inner type arguments, such as the `A` in
`Option<A>`. `encodedSchema` is the fallback representation when no
`Reviver` recognizes this declaration. `annotations.typeConstructor`
identifies the declaration kind, such as `{ _tag: "effect/Option" }`.

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

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SchemaRepresentation.ts#L53)

Since v4.0.0