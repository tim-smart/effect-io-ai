Package: `effect`<br />
Module: `TxQueue`<br />

## TxQueue.State

Represents the state of a transactional queue with sophisticated lifecycle management.

The queue progresses through three states:
- **Open**: Accepting offers and serving takes normally
- **Closing**: No new offers accepted, serving remaining items until empty
- **Done**: Terminal state with completion cause, no further operations possible

**Example**

```ts
import type { TxQueue } from "effect"

// State progression example
declare const state: TxQueue.State<string, Error>

if (state._tag === "Open") {
  console.log("Queue is accepting new items")
} else if (state._tag === "Closing") {
  console.log("Queue is draining, cause:", state.cause)
} else {
  console.log("Queue is done, cause:", state.cause)
}
```

**Signature**

```ts
type State<_A, E> = | {
    readonly _tag: "Open"
  }
  | {
    readonly _tag: "Closing"
    readonly cause: Cause.Cause<E>
  }
  | {
    readonly _tag: "Done"
    readonly cause: Cause.Cause<E>
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxQueue.ts#L53)

Since v4.0.0