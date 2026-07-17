Package: `effect`<br />
Module: `Sse`<br />

## Sse.Retry

Represents a Server-Sent Events retry directive.

**Details**

Decoders surface this value as a failure to request reconnection after
`duration`; encoders serialize an upstream `Retry` failure as a `retry:` line.

**Signature**

```ts
declare class Retry
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Sse.ts#L524)

Since v4.0.0