Package: `effect`<br />
Module: `Response`<br />

## Response.FinishReason

Type of the reason why a model stopped generating a response.

**Details**

Values include normal stops, token-limit stops, content filtering,
tool-call pauses, provider errors, and unknown provider-specific finish
reasons.

**Signature**

```ts
type FinishReason = typeof FinishReason.Type
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Response.ts#L2345)

Since v4.0.0