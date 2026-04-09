Package: `effect`<br />
Module: `OpenApi`<br />

## OpenApi.fromApi

Converts an `HttpApi` instance into an OpenAPI Specification object.

**Details**

This function takes an `HttpApi` instance, which defines a structured API,
and generates an OpenAPI Specification (`OpenAPISpec`). The resulting spec
adheres to the OpenAPI 3.1.0 standard and includes detailed metadata such as
paths, operations, security schemes, and components. The function processes
the API's annotations, middleware, groups, and endpoints to build a complete
and accurate representation of the API in OpenAPI format.

The function also deduplicates schemas, applies transformations, and
integrates annotations like descriptions, summaries, external documentation,
and overrides. Cached results are used for better performance when the same
`HttpApi` instance is processed multiple times.

**Options**

- `additionalProperties`: Controls how additional properties are handled while resolving the JSON schema. Possible values include:
  - `false`: Disallow additional properties (default)
  - `true`: Allow additional properties
  - `JsonSchema`: Use the provided JSON Schema for additional properties

**Signature**

```ts
declare const fromApi: <Id extends string, Groups extends HttpApiGroup.Any>(api: HttpApi.HttpApi<Id, Groups>, options?: { readonly additionalProperties?: boolean | JsonSchema.JsonSchema | undefined; } | undefined) => OpenAPISpec
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/OpenApi.ts#L212)

Since v4.0.0