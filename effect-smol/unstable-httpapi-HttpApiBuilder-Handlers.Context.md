Package: `effect`<br />
Module: `HttpApiBuilder`<br />

## HttpApiBuilder.Handlers.Context

Extracts the services required by a handler collection, including both handler
requirements and the environment required to construct the handlers.

**Signature**

```ts
type Context<A> = A extends Handlers<
    infer _R,
    infer _EndpointsByIdentifier,
    infer _HandledIdentifiers
  > ? _R :
    A extends Effect.Effect<
      Handlers<
        infer _R,
        infer _EndpointsByIdentifier,
        infer _HandledIdentifiers
      >,
      infer _EX,
      infer _RX
    > ? _R | _RX :
    never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiBuilder.ts#L382)

Since v4.0.0