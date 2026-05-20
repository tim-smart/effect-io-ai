Package: `effect`<br />
Module: `OpenApi`<br />

## OpenApi.OpenAPIComponents

Generated OpenAPI components containing shared schemas and security schemes.

**Signature**

```ts
export interface OpenAPIComponents {
  schemas: JsonSchema.Definitions
  securitySchemes: Record<string, OpenAPISecurityScheme>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/OpenApi.ts#L933)

Since v4.0.0