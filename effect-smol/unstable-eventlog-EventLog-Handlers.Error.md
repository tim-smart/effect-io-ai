Package: `effect`<br />
Module: `EventLog`<br />

## EventLog.Handlers.Error

Extracts the error type from an effect that produces `Handlers`.

**Signature**

```ts
type Error<A> = A extends Effect.Effect<
    Handlers<
      infer _R,
      infer _Events
    >,
    infer _EX,
    infer _RX
  > ? _EX :
    never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/EventLog.ts#L377)

Since v4.0.0