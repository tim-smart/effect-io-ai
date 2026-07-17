Package: `effect`<br />
Module: `Envelope`<br />

## Envelope.PartialRequest

Schema for a request envelope before its RPC payload has been decoded.

**Details**

The envelope metadata is decoded, while the payload remains `unknown` until it
is decoded with the target RPC payload schema.

**Signature**

```ts
declare class PartialRequest
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Envelope.ts#L101)

Since v4.0.0