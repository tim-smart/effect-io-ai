Package: `effect`<br />
Module: `MessageStorage`<br />

## MessageStorage.makeEncoded

Builds a `MessageStorage` service from an encoded storage driver.

**Details**

The adapter handles envelope and reply encoding and decoding, primary-key
generation, delayed delivery checks, duplicate decoding, and malformed-message
defect replies.

**Signature**

```ts
declare const makeEncoded: (encoded: Encoded) => Effect.Effect<MessageStorage["Service"], never, Snowflake.Generator>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/MessageStorage.ts#L562)

Since v4.0.0