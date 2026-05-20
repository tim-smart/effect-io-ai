Package: `effect`<br />
Module: `HttpApiMiddleware`<br />

## HttpApiMiddleware.AnyService

Base service key shape for HTTP API middleware services, including provided services, declared error schemas, and client requirements.

**Signature**

```ts
export interface AnyService extends Context.Key<any, any> {
  readonly [TypeId]: typeof TypeId
  readonly provides: any
  readonly error: ReadonlySet<Schema.Top>
  readonly requiredForClient: boolean
  readonly "~ClientError": any
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiMiddleware.ts#L156)

Since v4.0.0