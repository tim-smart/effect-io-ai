Package: `effect`<br />
Module: `Primitive`<br />

## Primitive.FileSchemaOptions

Represents options which can be provided to methods that deal with parsing
file content and decoding the file content with a `Schema`.

**Signature**

```ts
type FileSchemaOptions = Struct.Simplify<
  FileParseOptions & {
    readonly errorFormatter?: Formatter<string> | undefined
  }
>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Primitive.ts#L543)

Since v4.0.0