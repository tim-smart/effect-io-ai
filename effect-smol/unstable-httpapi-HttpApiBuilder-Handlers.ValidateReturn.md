Package: `effect`<br />
Module: `HttpApiBuilder`<br />

## HttpApiBuilder.Handlers.ValidateReturn

Validates the return value of a group handler builder, preserving successful
handler collections and producing a descriptive type error when endpoints remain
unhandled.

**Signature**

```ts
type ValidateReturn<A> = A extends (
    | Handlers<
      infer _R,
      infer _Endpoints
    >
    | Effect.Effect<
      Handlers<
        infer _R,
        infer _Endpoints
      >,
      infer _EX,
      infer _RX
    >
  ) ? [_Endpoints] extends [never] ? A
    : `Endpoint not handled: ${HttpApiEndpoint.Name<_Endpoints>}` :
    `Must return the implemented handlers`
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiBuilder.ts#L284)

Since v4.0.0