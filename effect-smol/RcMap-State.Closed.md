Package: `effect`<br />
Module: `RcMap`<br />

## RcMap.State.Closed

Represents the closed state of an RcMap, indicating that the map has been
shut down and will no longer accept new operations.

**Example**

```ts
import type { RcMap } from "effect"

// State.Closed indicates the RcMap is shut down
declare const closedState: RcMap.State.Closed

// Check for closed state
if (closedState._tag === "Closed") {
  console.log("RcMap is closed, no operations allowed")
  // Any attempt to get resources will result in interruption
}
```

**Signature**

```ts
export interface Closed {
    readonly _tag: "Closed"
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RcMap.ts#L157)

Since v4.0.0