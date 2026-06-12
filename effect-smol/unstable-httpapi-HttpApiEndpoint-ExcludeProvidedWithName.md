Package: `effect`<br />
Module: `HttpApiEndpoint`<br />

## HttpApiEndpoint.ExcludeProvidedWithName

Removes services provided by the HTTP router and the named endpoint's middleware
from a service requirement union.

**Signature**

```ts
type ExcludeProvidedWithName<Endpoints, Name, R> = ExcludeProvided<
  WithName<Endpoints, Name>,
  R
>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiEndpoint.ts#L831)

Since v4.0.0