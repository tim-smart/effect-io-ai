Package: `effect`<br />
Module: `SchemaParser`<br />

## SchemaParser.makeOption

Creates a synchronous maker that returns `Option.some` with the constructed
value on success, or `Option.none` when construction fails.

Use this when you only need to know whether constructor input is valid and do
not need error details.

**Signature**

```ts
declare const makeOption: <S extends Schema.Top>(schema: S) => (input: S["~type.make.in"], options?: Schema.MakeOptions) => Option.Option<S["Type"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaParser.ts#L96)

Since v4.0.0