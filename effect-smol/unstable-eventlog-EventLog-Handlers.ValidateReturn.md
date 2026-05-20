Package: `effect`<br />
Module: `EventLog`<br />

## EventLog.Handlers.ValidateReturn

Validates that a handler builder returned all required handlers.

**Details**

If any event tag remains unhandled, the type evaluates to an explanatory
compile-time error string.

**Signature**

```ts
type ValidateReturn<A> = A extends (
    | Handlers<
      infer _R,
      infer _Events
    >
    | Effect.Effect<
      Handlers<
        infer _R,
        infer _Events
      >,
      infer _EX,
      infer _RX
    >
  ) ? [_Events] extends [never] ? A
    : `Event not handled: ${Event.Tag<_Events>}` :
    `Must return the implemented handlers`
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/EventLog.ts#L354)

Since v4.0.0