Package: `effect`<br />
Module: `OpenApi`<br />

## OpenApi.annotations

Builds a `Context` containing OpenAPI annotations from the supplied options.

**Signature**

```ts
declare const annotations: (options: { readonly identifier?: string | undefined; readonly title?: string | undefined; readonly version?: string | undefined; readonly description?: string | undefined; readonly license?: OpenAPISpecLicense | undefined; readonly summary?: string | undefined; readonly deprecated?: boolean | undefined; readonly externalDocs?: OpenAPISpecExternalDocs | undefined; readonly servers?: ReadonlyArray<OpenAPISpecServer> | undefined; readonly format?: string | undefined; readonly override?: Record<string, unknown> | undefined; readonly exclude?: boolean | undefined; readonly transform?: ((openApiSpec: Record<string, any>) => Record<string, any>) | undefined; }) => Context.Context<never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/OpenApi.ts#L179)

Since v4.0.0