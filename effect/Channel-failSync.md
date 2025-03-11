## failSync

Constructs a channel that succeeds immediately with the specified lazily
evaluated value.

**Signature**

```ts
declare const failSync: <E>(evaluate: LazyArg<E>) => Channel<never, unknown, E, unknown, never, unknown>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Channel.ts#L814)

Since v2.0.0