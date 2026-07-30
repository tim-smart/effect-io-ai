Package: `effect`<br />
Module: `Sink`<br />

## Sink.forEachWhile

A sink that executes the provided effectful function for every element fed
to it until `f` evaluates to `false`.

**Signature**

```ts
declare const forEachWhile: <In, E, R>(f: (input: In) => Effect.Effect<boolean, E, R>) => Sink<void, In, In, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Sink.ts#L943)

Since v2.0.0