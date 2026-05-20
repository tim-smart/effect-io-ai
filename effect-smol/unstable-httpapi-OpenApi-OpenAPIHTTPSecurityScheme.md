Package: `effect`<br />
Module: `OpenApi`<br />

## OpenApi.OpenAPIHTTPSecurityScheme

Generated OpenAPI HTTP security scheme, such as bearer or basic authentication.

**Signature**

```ts
export interface OpenAPIHTTPSecurityScheme {
  readonly type: "http"
  scheme: "bearer" | "basic" | string
  description?: string
  /* only for scheme: 'bearer' */
  bearerFormat?: string
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/OpenApi.ts#L944)

Since v4.0.0