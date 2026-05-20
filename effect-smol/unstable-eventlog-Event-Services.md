Package: `effect`<br />
Module: `Event`<br />

## Event.Services

All schema services required to encode and decode the payload, success, and
error schemas for an event definition.

**Signature**

```ts
type Services<A> = A extends Event<
  infer _Tag,
  infer _Payload,
  infer _Success,
  infer _Error
> ?
    | _Payload["DecodingServices"]
    | _Success["EncodingServices"]
    | _Error["EncodingServices"]
    | _Payload["EncodingServices"]
    | _Success["DecodingServices"]
    | _Error["DecodingServices"]
  : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Event.ts#L317)

Since v4.0.0