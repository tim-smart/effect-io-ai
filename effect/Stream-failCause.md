## failCause

The stream that always fails with the specified `Cause`.

**Signature**

```ts
declare const failCause: <E>(cause: Cause.Cause<E>) => Stream<never, E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L1596)

Since v2.0.0