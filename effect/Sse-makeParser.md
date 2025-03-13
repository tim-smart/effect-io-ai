Package: `@effect/experimental`<br />
Module: `Sse`<br />

## Sse.makeParser

Create a SSE parser.

Adapted from https://github.com/rexxars/eventsource-parser under MIT license.

**Signature**

```ts
declare const makeParser: (onParse: (event: AnyEvent) => void) => Parser
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/experimental/src/Sse.ts#L93)

Since v1.0.0