Package: `effect`<br />
Module: `ResponseIdTracker`<br />

## ResponseIdTracker.ResponseIdTracker

Service tag for enabling provider previous-response ID reuse across language
model calls.

**When to use**

Use when when provided, language model operations can use the tracker to send only new
prompt messages together with the provider's prior response ID.

**Signature**

```ts
declare class ResponseIdTracker
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ResponseIdTracker.ts#L92)

Since v4.0.0