Package: `effect`<br />
Module: `HttpApiMiddleware`<br />

## HttpApiMiddleware.MiddlewareClient

Computes the client-side service marker required for middleware that must also run in generated clients.

**Signature**

```ts
type MiddlewareClient<A> = A extends {
  readonly [TypeId]: {
    readonly requiredForClient: true
  }
} ? ForClient<A>
  : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiMiddleware.ts#L276)

Since v4.0.0