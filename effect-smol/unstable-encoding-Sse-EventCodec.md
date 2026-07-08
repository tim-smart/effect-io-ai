Package: `effect`<br />
Module: `Sse`<br />

## Sse.EventCodec

A constraint for schemas that can decode SSE events.

**Signature**

```ts
export interface EventCodec extends
  Schema.ConstraintCodec<
    any,
    {
      readonly id?: string | undefined
      readonly event?: string | undefined
      readonly data: string
    },
    unknown,
    unknown
  >
{}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Sse.ts#L82)

Since v4.0.0