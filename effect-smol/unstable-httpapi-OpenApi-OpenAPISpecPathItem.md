Package: `effect`<br />
Module: `OpenApi`<br />

## OpenApi.OpenAPISpecPathItem

Generated OpenAPI path item mapping HTTP methods to operations for a single route path.

**Signature**

```ts
type OpenAPISpecPathItem = {
  [K in OpenAPISpecMethodName]?: OpenAPISpecOperation
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/OpenApi.ts#L938)

Since v4.0.0