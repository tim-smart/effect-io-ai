Package: `effect`<br />
Module: `HttpApiEndpoint`<br />

## HttpApiEndpoint.ExcludeProvidedWithIdentifier

Removes services provided by the HTTP router and the selected endpoint's
middleware from a service requirement union.

**Signature**

```ts
type ExcludeProvidedWithIdentifier<Endpoints, Identifier, R> = ExcludeProvided<
  WithIdentifier<Endpoints, Identifier>,
  R
>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpApiEndpoint.ts#L695)

Since v4.0.0