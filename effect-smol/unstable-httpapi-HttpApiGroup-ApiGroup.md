Package: `effect`<br />
Module: `HttpApiGroup`<br />

## HttpApiGroup.ApiGroup

Type-level identity for a group within an HTTP API, pairing the API id with the
group name for service derivation.

**Signature**

```ts
export interface ApiGroup<ApiId extends string, Name extends string> {
  readonly _: unique symbol
  readonly apiId: ApiId
  readonly name: Name
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiGroup.ts#L122)

Since v4.0.0