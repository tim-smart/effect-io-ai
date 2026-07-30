Package: `effect`<br />
Module: `Sink`<br />

## Sink.failCauseSync

Creates a sink halting with a specified lazily evaluated `Cause`.

**Signature**

```ts
declare const failCauseSync: <E>(evaluate: LazyArg<Cause.Cause<E>>) => Sink<never, unknown, never, E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Sink.ts#L596)

Since v2.0.0