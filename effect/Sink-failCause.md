## failCause

Creates a sink halting with a specified `Cause`.

**Signature**

```ts
declare const failCause: <E>(cause: Cause.Cause<E>) => Sink<never, unknown, never, E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Sink.ts#L588)

Since v2.0.0