Package: `effect`<br />
Module: `HttpApiEndpoint`<br />

## HttpApiEndpoint.ClientResponseMode

Controls what a generated client method returns: the decoded success value,
the decoded value paired with the raw response, or only the raw response.

**Signature**

```ts
type ClientResponseMode = "decoded-only" | "decoded-and-response" | "response-only"
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiEndpoint.ts#L564)

Since v4.0.0