Package: `effect`<br />
Module: `Schema`<br />

## Schema.Redacted

Creates a schema for the `Redacted` type, providing secure handling of
sensitive information.

If the wrapped schema fails, the issue will be redacted to prevent both
the actual value and the schema details from being exposed.

**Options**

- `label`: When provided, the schema will behave as follows:
  - Values will be validated against the label in addition to the wrapped schema
  - The default JSON serializer will deserialize into a `Redacted` instance with the label
  - The arbitrary generator will produce a `Redacted` instance with the label
  - The formatter will return the label

**Default JSON serializer**

The default JSON serializer will fail when attempting to serialize a `Redacted` value,
but it will deserialize a value into a `Redacted` instance.

**Signature**

```ts
declare const Redacted: <S extends Top>(value: S, options?: { readonly label?: string | undefined; }) => Redacted<S>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L5688)

Since v4.0.0