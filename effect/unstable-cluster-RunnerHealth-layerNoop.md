Package: `effect`<br />
Module: `RunnerHealth`<br />

## RunnerHealth.layerNoop

Layer that always considers a runner healthy.

**When to use**

Use when you need a runner-health layer for tests or local development where
active health checks are unnecessary.

**Signature**

```ts
declare const layerNoop: Layer.Layer<RunnerHealth, never, never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/RunnerHealth.ts#L51)

Since v4.0.0