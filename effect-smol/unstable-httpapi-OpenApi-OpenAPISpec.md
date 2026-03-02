Package: `effect`<br />
Module: `OpenApi`<br />

## OpenApi.OpenAPISpec

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/OpenApi.ts#L704)

Since v4.0.0