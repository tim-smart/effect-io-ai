Package: `effect`<br />
Module: `DevToolsClient`<br />

## DevToolsClient.makeTracer

Creates a tracer that delegates to the current tracer while sending span
starts, span events, and span ends to `DevToolsClient`.

**Signature**

```ts
declare const makeTracer: Effect.Effect<Tracer.Tracer, never, DevToolsClient>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DevToolsClient.ts#L220)

Since v4.0.0