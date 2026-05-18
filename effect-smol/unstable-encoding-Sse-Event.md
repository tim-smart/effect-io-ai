Package: `effect`<br />
Module: `Sse`<br />

## Sse.Event

Tagged model for a Server-Sent Events message.

It contains the event name, optional event ID, and string data payload.

**Signature**

```ts
export interface Event {
  readonly _tag: "Event"
  readonly event: string
  readonly id: string | undefined
  readonly data: string
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Sse.ts#L418)

Since v4.0.0