Package: `@effect/sql-pglite`<br />
Module: `PgliteClient`<br />

## PgliteClient.PgliteClientConfig.Base

Shared PGlite client options for span attributes, query/result name transformations, and JSON value transformation.

**Signature**

```ts
export interface Base {
    readonly spanAttributes?: Record<string, unknown> | undefined
    readonly transformResultNames?: ((str: string) => string) | undefined
    readonly transformQueryNames?: ((str: string) => string) | undefined
    readonly transformJson?: boolean | undefined
  }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/sql/pglite/src/PgliteClient.ts#L109)

Since v4.0.0