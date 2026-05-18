Package: `effect`<br />
Module: `HttpClient`<br />

## HttpClient.TracerDisabledWhen

Context reference for a predicate that disables client-side tracing for matching outgoing requests.

**Signature**

```ts
declare const TracerDisabledWhen: Context.Reference<Predicate.Predicate<HttpClientRequest.HttpClientRequest>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpClient.ts#L1410)

Since v4.0.0