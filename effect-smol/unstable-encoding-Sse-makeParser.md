Package: `effect`<br />
Module: `Sse`<br />

## Sse.makeParser

Creates a stateful Server-Sent Events parser.

**Details**

Call `feed` with text chunks to parse `Event` and `Retry` values through the
callback, and call `reset` to clear any buffered event state.

**Signature**

```ts
declare const makeParser: (onParse: (event: AnyEvent) => void) => Parser
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Sse.ts#L178)

Since v4.0.0