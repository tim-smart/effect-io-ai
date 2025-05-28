Package: `effect`<br />
Module: `Stream`<br />

## Stream.failCauseSync

The stream that always fails with the specified lazily evaluated `Cause`.

**Signature**

```ts
declare const failCauseSync: <E>(evaluate: LazyArg<Cause.Cause<E>>) => Stream<never, E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L1605)

Since v2.0.0