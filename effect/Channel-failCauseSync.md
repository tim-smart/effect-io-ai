## failCauseSync

Constructs a channel that succeeds immediately with the specified lazily
evaluated `Cause`.

**Signature**

```ts
declare const failCauseSync: <E>(evaluate: LazyArg<Cause.Cause<E>>) => Channel<never, unknown, E, unknown, never, unknown>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Channel.ts#L832)

Since v2.0.0