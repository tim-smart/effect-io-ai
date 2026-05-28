Package: `effect`<br />
Module: `Envelope`<br />

## Envelope.InterruptEncoded

Serialized JSON shape of an `Interrupt` envelope.

**Signature**

```ts
export interface InterruptEncoded {
  readonly _tag: "Interrupt"
  readonly id: string
  readonly address: {
    readonly shardId: {
      readonly group: string
      readonly id: number
    }
    readonly entityType: string
    readonly entityId: string
  }
  readonly requestId: string
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Envelope.ts#L255)

Since v4.0.0