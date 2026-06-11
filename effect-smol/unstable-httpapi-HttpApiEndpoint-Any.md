Package: `effect`<br />
Module: `HttpApiEndpoint`<br />

## HttpApiEndpoint.Any

A widened `HttpApiEndpoint` type used when the concrete method, path, schemas,
and middleware types are not needed.

**Signature**

```ts
export interface Any extends Pipeable {
  readonly [TypeId]: any
  readonly name: string
  readonly ["~Success"]: Schema.Top
  readonly ["~Error"]: Schema.Top
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiEndpoint.ts#L208)

Since v4.0.0