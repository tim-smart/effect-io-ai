Package: `effect`<br />
Module: `Sse`<br />

## Sse.makeParser

Create a SSE parser.

Adapted from https://github.com/rexxars/eventsource-parser under MIT license.

**Signature**

```ts
declare const makeParser: (onParse: (event: AnyEvent) => void) => Parser
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Sse.ts#L130)

Since v4.0.0