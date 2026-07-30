Package: `@effect/experimental`<br />
Module: `Sse`<br />

## Sse.makeParser

Create a SSE parser.

Adapted from https://github.com/rexxars/eventsource-parser under MIT license.
`feed` returns an `SseError` if the pending event exceeds `maxEventSize`.

**Signature**

```ts
declare const makeParser: (onParse: (event: AnyEvent) => void, options?: DecodeOptions) => Parser
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/experimental/src/Sse.ts#L151)

Since v1.0.0