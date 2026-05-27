Package: `effect`<br />
Module: `Sse`<br />

## Sse.AnyEvent

Union of SSE values that can be rendered by an `Encoder`: regular events and
retry directives.

**Signature**

```ts
type AnyEvent = Event | Retry
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Sse.ts#L576)

Since v4.0.0