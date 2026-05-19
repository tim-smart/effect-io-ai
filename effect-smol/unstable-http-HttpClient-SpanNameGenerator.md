Package: `effect`<br />
Module: `HttpClient`<br />

## HttpClient.SpanNameGenerator

Context reference for generating the span name used for outgoing client request spans.

**Signature**

```ts
declare const SpanNameGenerator: Context.Reference<(request: HttpClientRequest.HttpClientRequest) => string>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpClient.ts#L1430)

Since v4.0.0