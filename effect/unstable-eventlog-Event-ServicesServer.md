Package: `effect`<br />
Module: `Event`<br />

## Event.ServicesServer

Schema services required by a server for an event definition.

**Details**

This includes payload decoding services plus success and error encoding
services.

**Signature**

```ts
type ServicesServer<A> = A extends Event<
  infer _Tag,
  infer _Payload,
  infer _Success,
  infer _Error
> ?
    | _Payload["DecodingServices"]
    | _Success["EncodingServices"]
    | _Error["EncodingServices"]
  : never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Event.ts#L292)

Since v4.0.0