Package: `effect`<br />
Module: `Event`<br />

## Event.ServicesClient

Schema services required by a client for an event definition.

**Details**

This includes payload encoding services plus success and error decoding
services.

**Signature**

```ts
type ServicesClient<A> = A extends Event<
  infer _Tag,
  infer _Payload,
  infer _Success,
  infer _Error
> ?
    | _Payload["EncodingServices"]
    | _Success["DecodingServices"]
    | _Error["DecodingServices"]
  : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Event.ts#L292)

Since v4.0.0