Package: `effect`<br />
Module: `HttpApiEndpoint`<br />

## HttpApiEndpoint.ExcludeProvided

Removes services provided by the HTTP router and endpoint middleware from a
service requirement union.

**Signature**

```ts
type ExcludeProvided<Endpoint, R> = Exclude<
  R,
  | HttpRouter.Provided
  | HttpApiMiddleware.Provides<Middleware<Endpoint>>
>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiEndpoint.ts#L842)

Since v4.0.0