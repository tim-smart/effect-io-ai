Package: `effect`<br />
Module: `EventLog`<br />

## EventLog.Handlers.Services

Computes the services required by a `Handlers` value or by an effect that
produces one, including event schema services.

**Signature**

```ts
type Services<A> = A extends Handlers<
    infer _R,
    infer _Events
  > ? _R | Event.Services<_Events> :
    A extends Effect.Effect<
      Handlers<
        infer _R,
        infer _Events
      >,
      infer _EX,
      infer _RX
    > ? _R | _RX | Event.Services<_Events> :
    never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/EventLog.ts#L394)

Since v4.0.0