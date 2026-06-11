Package: `effect`<br />
Module: `HttpServerRespondable`<br />

## HttpServerRespondable.Respondable

Protocol for values that can be converted into an `HttpServerResponse`.

**Details**

Implement the protocol method to describe the response that should be sent for
the value.

**Signature**

```ts
export interface Respondable {
  [symbol](): Effect.Effect<HttpServerResponse, unknown>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpServerRespondable.ts#L38)

Since v4.0.0