## OpenAPISpec

This model describes the OpenAPI specification (version 3.1.0) returned by
`fromApi`. It is not intended to describe the entire OpenAPI
specification, only the output of `fromApi`.

**Signature**

```ts
export interface OpenAPISpec {
  openapi: "3.1.0"
  info: OpenAPISpecInfo
  paths: OpenAPISpecPaths
  components: OpenAPIComponents
  security: Array<OpenAPISecurityRequirement>
  tags: Array<OpenAPISpecTag>
  servers?: Array<OpenAPISpecServer>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/OpenApi.ts#L495)

Since v1.0.0