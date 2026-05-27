Package: `effect`<br />
Module: `HttpApiMiddleware`<br />

## HttpApiMiddleware.AnyServiceSecurity

Middleware service key shape for security middleware, including the security schemes handled by the service.

**Signature**

```ts
export interface AnyServiceSecurity extends AnyService {
  readonly [SecurityTypeId]: typeof SecurityTypeId
  readonly security: Record<string, HttpApiSecurity.HttpApiSecurity>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiMiddleware.ts#L194)

Since v4.0.0