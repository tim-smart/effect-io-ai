## forEach

A sink that executes the provided effectful function for every element fed
to it.

**Signature**

```ts
declare const forEach: <In, X, E, R>(f: (input: In) => Effect.Effect<X, E, R>) => Sink<void, In, never, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Sink.ts#L911)

Since v2.0.0