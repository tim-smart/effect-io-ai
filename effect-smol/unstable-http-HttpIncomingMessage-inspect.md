Package: `effect`<br />
Module: `HttpIncomingMessage`<br />

## HttpIncomingMessage.inspect

Builds an inspectable object for an incoming message, redacting headers and including a synchronously readable JSON or text body when available.

**Signature**

```ts
declare const inspect: <E>(self: HttpIncomingMessage<E>, that: object) => object
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpIncomingMessage.ts#L125)

Since v4.0.0