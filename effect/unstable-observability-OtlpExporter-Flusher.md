Package: `effect`<br />
Module: `OtlpExporter`<br />

## OtlpExporter.Flusher

Registry of exporter flush operations, used to manually drain buffered
telemetry before the surrounding scope closes.

**Details**

Every exporter created by `make` registers its export operation here, so a
single `flush` drains all signals sharing the registry. `flush` returns only
after the exports it initiated have settled, cannot fail, and respects each
exporter's temporary-disable window. Wrap it with `Effect.timeoutOption` to
bound its duration at the call site.

**Signature**

```ts
declare class Flusher
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/OtlpExporter.ts#L62)

Since v4.0.0