Package: `effect`<br />
Module: `Event`<br />

## Event.PayloadWithTag

Decoded payload value type for the event in a union with the specified tag.

**Signature**

```ts
type PayloadWithTag<Events, Tag> = Payload<WithTag<Events, Tag>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Event.ts#L346)

Since v4.0.0