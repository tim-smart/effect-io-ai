Package: `effect`<br />
Module: `OtlpExporter`<br />

## OtlpExporter.layerFlusher

Provides a `Flusher` backed by a fresh registry.

**Details**

This is intentionally a single module-level constant rather than a factory:
layer memoization is keyed by layer instance, so every signal layer
referencing this same constant shares one registry per layer build, and one
`flush` drains traces, logs and metrics together. A factory returning a new
layer per call would silently create one registry per signal.

Registration is scoped — an exporter is removed from the registry when its
own scope closes. Flushing with an empty registry is a no-op.

Note that `flush` cannot await an export that was already in flight when it
was called (for example one started by the export interval); it only waits
for the exports it initiates.

**Signature**

```ts
declare const layerFlusher: Layer.Layer<Flusher, never, never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/OtlpExporter.ts#L115)

Since v4.0.0