Package: `effect`<br />
Module: `RunnerHealth`<br />

## RunnerHealth.layerNoop

Layer that always considers a runner healthy.

**When to use**

Use when tests or local development do not need active runner health checks.

**Signature**

```ts
declare const layerNoop: Layer.Layer<RunnerHealth, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RunnerHealth.ts#L79)

Since v4.0.0