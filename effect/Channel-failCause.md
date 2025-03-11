## failCause

Constructs a channel that fails immediately with the specified `Cause`.

**Signature**

```ts
declare const failCause: <E>(cause: Cause.Cause<E>) => Channel<never, unknown, E, unknown, never, unknown>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Channel.ts#L822)

Since v2.0.0