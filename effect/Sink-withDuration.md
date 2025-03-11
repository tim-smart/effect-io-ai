## withDuration

Returns the sink that executes this one and times its execution.

**Signature**

```ts
declare const withDuration: <A, In, L, E, R>(self: Sink<A, In, L, E, R>) => Sink<[A, Duration.Duration], In, L, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Sink.ts#L1381)

Since v2.0.0