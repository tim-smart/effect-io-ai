Package: `effect`<br />
Module: `Effect`<br />

## Effect.tagMetrics

Tags each metric in an effect with specific key-value pairs.

**Details**

This function allows you to tag all metrics in an effect with a set of
key-value pairs or a single key-value pair. Tags help you add metadata to
metrics, making it easier to filter and categorize them in monitoring
systems. The provided tags will apply to all metrics generated within the
effect's scope.

**Signature**

```ts
declare const tagMetrics: { (key: string, value: string): <A, E, R>(effect: Effect<A, E, R>) => Effect<A, E, R>; (values: Record<string, string>): <A, E, R>(effect: Effect<A, E, R>) => Effect<A, E, R>; <A, E, R>(effect: Effect<A, E, R>, key: string, value: string): Effect<A, E, R>; <A, E, R>(effect: Effect<A, E, R>, values: Record<string, string>): Effect<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L11672)

Since v2.0.0