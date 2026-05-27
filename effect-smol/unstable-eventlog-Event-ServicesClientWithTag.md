Package: `effect`<br />
Module: `Event`<br />

## Event.ServicesClientWithTag

Client-side schema services required for the event in a union with the specified
tag.

**Signature**

```ts
type ServicesClientWithTag<Events, Tag> = ServicesClient<WithTag<Events, Tag>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Event.ts#L393)

Since v4.0.0