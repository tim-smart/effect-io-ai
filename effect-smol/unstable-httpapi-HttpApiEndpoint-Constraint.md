Package: `effect`<br />
Module: `HttpApiEndpoint`<br />

## HttpApiEndpoint.Constraint

A widened `HttpApiEndpoint` type used when the concrete method, path, schemas,
and middleware types are not needed.

**Signature**

```ts
export interface Constraint {
  readonly [TypeId]: typeof TypeId
  readonly identifier: string
  readonly ["~Success"]: Schema.Constraint
  readonly ["~Error"]: Schema.Constraint
  readonly ["~Request"]: unknown
  readonly ["~RequestRaw"]: unknown
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiEndpoint.ts#L288)

Since v4.0.0