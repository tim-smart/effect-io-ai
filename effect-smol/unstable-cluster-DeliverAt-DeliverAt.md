Package: `effect`<br />
Module: `DeliverAt`<br />

## DeliverAt.DeliverAt

Interface for payloads that specify when a cluster message should be delivered.

Implementations return the target delivery `DateTime` through the `DeliverAt`
symbol method.

**Signature**

```ts
export interface DeliverAt {
  [symbol](): DateTime
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DeliverAt.ts#L46)

Since v4.0.0