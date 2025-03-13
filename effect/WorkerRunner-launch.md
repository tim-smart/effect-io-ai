Package: `@effect/platform`<br />
Module: `WorkerRunner`<br />

## WorkerRunner.launch

Launch the specified layer, interrupting the fiber when the CloseLatch is
triggered.

**Signature**

```ts
declare const launch: <A, E, R>(layer: Layer.Layer<A, E, R>) => Effect.Effect<void, E | WorkerError, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/WorkerRunner.ts#L247)

Since v1.0.0