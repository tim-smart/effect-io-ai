Package: `effect`<br />
Module: `RcMap`<br />

## RcMap.State

Represents the internal state of an RcMap, which can be either Open (active)
or Closed (shutdown and no longer accepting operations).

**Example**

```ts
import type { RcMap } from "effect"

// State is a union type that can be either:
declare const openState: RcMap.State.Open<string, number, never>
declare const closedState: RcMap.State.Closed

// Check the state type
declare const state: RcMap.State<string, number, never>
if (state._tag === "Open") {
  // Access the internal map when open
  console.log("Map is open, contains entries")
} else {
  // State is closed
  console.log("Map is closed")
}
```

**Signature**

```ts
type State<K, A, E> = State.Open<K, A, E> | State.Closed
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RcMap.ts#L88)

Since v4.0.0