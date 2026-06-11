Package: `effect`<br />
Module: `OpenApi`<br />

## OpenApi.OpenAPISpecServer

OpenAPI server object used in the generated `servers` array.

**Signature**

```ts
export interface OpenAPISpecServer {
  url: string
  description?: string
  variables?: Record<string, OpenAPISpecServerVariable>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/OpenApi.ts#L795)

Since v4.0.0