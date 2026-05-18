Package: `effect`<br />
Module: `Sse`<br />

## Sse.EventEncoded

Untagged Server-Sent Events payload shape.

It contains the event name, optional event ID, and string data payload.

**Signature**

```ts
export interface EventEncoded {
  readonly event: string
  readonly id: string | undefined
  readonly data: string
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Sse.ts#L498)

Since v4.0.0