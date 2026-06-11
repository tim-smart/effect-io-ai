Package: `effect`<br />
Module: `SqlStream`<br />

## SqlStream.asyncPauseResume

Creates a stream from a callback-style producer with pause and resume
callbacks that are triggered when the internal queue applies backpressure.

**Signature**

```ts
declare const asyncPauseResume: <A, E = never, R = never>(register: (emit: { readonly single: (item: A) => void; readonly array: (arr: ReadonlyArray<A>) => void; readonly fail: (error: E) => void; readonly end: () => void; }) => Effect.Effect<{ onPause(): void; onResume(): void; }, E, R | Scope.Scope>, bufferSize?: number) => Stream.Stream<A, E, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SqlStream.ts#L27)

Since v4.0.0