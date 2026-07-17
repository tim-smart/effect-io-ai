Package: `effect`<br />
Module: `OpenApi`<br />

## OpenApi.OpenAPISpecParameter

Generated OpenAPI parameter object for path, query, header, or cookie parameters.

**Signature**

```ts
export interface OpenAPISpecParameter {
  name: string
  in: "query" | "header" | "path" | "cookie"
  schema: object
  required: boolean
  description?: string
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/OpenApi.ts#L986)

Since v4.0.0