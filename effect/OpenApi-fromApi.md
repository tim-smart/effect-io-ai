Package: `@effect/platform`<br />
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

- `additionalPropertiesStrategy`: Controls the handling of additional properties. Possible values are:
  - `"strict"`: Disallow additional properties (default behavior).
  - `"allow"`: Allow additional properties.

**Example**

```ts
import { HttpApi, HttpApiEndpoint, HttpApiGroup, OpenApi } from "@effect/platform"
import { Schema } from "effect"

const api = HttpApi.make("api").add(
  HttpApiGroup.make("group").add(
    HttpApiEndpoint.get("get", "/items")
      .addSuccess(Schema.Array(Schema.String))
  )
)

const spec = OpenApi.fromApi(api)

// console.log(JSON.stringify(spec, null, 2))
// Output: OpenAPI specification in JSON format
```

**Signature**

```ts
declare const fromApi: <Id extends string, Groups extends HttpApiGroup.Any, E, R>(api: HttpApi.HttpApi<Id, Groups, E, R>, options?: { readonly additionalPropertiesStrategy?: AdditionalPropertiesStrategy | undefined; } | undefined) => OpenAPISpec
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/OpenApi.ts#L228)

Since v1.0.0