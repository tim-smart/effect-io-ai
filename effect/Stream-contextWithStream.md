## contextWithStream

Accesses the context of the stream in the context of a stream.

**Signature**

```ts
declare const contextWithStream: <R0, A, E, R>(f: (env: Context.Context<R0>) => Stream<A, E, R>) => Stream<A, E, R0 | R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L1548)

Since v2.0.0