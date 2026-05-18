Package: `effect`<br />
Module: `HttpBody`<br />

## HttpBody.jsonSchema

Creates a JSON body constructor that first encodes values with the schema's JSON codec.

Schema encoding issues and JSON serialization failures are returned as `HttpBodyError` values.

**Signature**

```ts
declare const jsonSchema: <S extends Schema.Top>(schema: S, options?: ParseOptions | undefined) => (body: S["Type"], contentType?: string) => Effect.Effect<Uint8Array, HttpBodyError, S["EncodingServices"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpBody.ts#L302)

Since v4.0.0