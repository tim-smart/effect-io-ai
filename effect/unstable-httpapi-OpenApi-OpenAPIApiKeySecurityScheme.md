Package: `effect`<br />
Module: `OpenApi`<br />

## OpenApi.OpenAPIApiKeySecurityScheme

Generated OpenAPI API key security scheme.

**Signature**

```ts
export interface OpenAPIApiKeySecurityScheme {
  readonly type: "apiKey"
  name: string
  in: "query" | "header" | "cookie"
  description?: string
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/OpenApi.ts#L1093)

Since v4.0.0