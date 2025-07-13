Package: `effect`<br />
Module: `Effect`<br />

## Effect.tagMetricsScoped

Tags metrics within a scope with a specific key-value pair.

**Details**

This function tags all metrics within a scope with the provided key-value
pair. Once the scope is closed, the tag is automatically removed. This is
useful for applying temporary context-specific tags to metrics during scoped
operations.

**Signature**

```ts
declare const tagMetricsScoped: (key: string, value: string) => Effect<void, never, Scope.Scope>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L11683)

Since v2.0.0