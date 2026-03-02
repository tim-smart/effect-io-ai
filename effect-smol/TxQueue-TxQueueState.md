Package: `effect`<br />
Module: `TxQueue`<br />

## TxQueue.TxQueueState

Represents the shared state of a transactional queue that can be inspected.
This interface contains the core properties needed for queue state inspection
operations like size, capacity, and completion status.

**Signature**

```ts
export interface TxQueueState extends Inspectable {
  readonly strategy: "bounded" | "unbounded" | "dropping" | "sliding"
  readonly capacity: number
  readonly items: TxChunk.TxChunk<any>
  readonly stateRef: TxRef.TxRef<State<any, any>>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxQueue.ts#L183)

Since v4.0.0