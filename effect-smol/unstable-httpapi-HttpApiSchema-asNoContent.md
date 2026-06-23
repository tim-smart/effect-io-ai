Package: `effect`<br />
Module: `HttpApiSchema`<br />

## HttpApiSchema.asNoContent

Schema type returned by `asNoContent`, encoding as `void` while decoding to the original schema type.

**Signature**

```ts
export interface asNoContent<S extends Schema.Constraint> extends Schema.decodeTo<Schema.toType<S>, Schema.Void> {}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiSchema.ts#L236)

Since v4.0.0