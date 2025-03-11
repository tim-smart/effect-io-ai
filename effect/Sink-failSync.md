## failSync

A sink that always fails with the specified lazily evaluated error.

**Signature**

```ts
declare const failSync: <E>(evaluate: LazyArg<E>) => Sink<never, unknown, never, E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Sink.ts#L580)

Since v2.0.0