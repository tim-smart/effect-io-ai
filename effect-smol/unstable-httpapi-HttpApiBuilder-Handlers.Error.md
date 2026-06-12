Package: `effect`<br />
Module: `HttpApiBuilder`<br />

## HttpApiBuilder.Handlers.Error

Extracts the error channel from an effect that produces a `Handlers`
collection, returning `never` for non-effectful handler collections.

**Signature**

```ts
type Error<A> = A extends Effect.Effect<
    Handlers<
      infer _R,
      infer _Endpoints
    >,
    infer _EX,
    infer _RX
  > ? _EX :
    never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiBuilder.ts#L311)

Since v4.0.0