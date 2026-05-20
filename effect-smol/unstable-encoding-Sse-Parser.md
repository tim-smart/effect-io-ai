Package: `effect`<br />
Module: `Sse`<br />

## Sse.Parser

Stateful Server-Sent Events parser returned by `makeParser`.

**Details**

`feed` accepts additional text chunks and `reset` clears buffered parser state.

**Signature**

```ts
export interface Parser {
  feed(chunk: string): void
  reset(): void
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Sse.ts#L339)

Since v4.0.0