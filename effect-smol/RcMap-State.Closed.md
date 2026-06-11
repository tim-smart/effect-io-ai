Package: `effect`<br />
Module: `RcMap`<br />

## RcMap.State.Closed

Represents the closed state of an RcMap, indicating that the map has been
shut down and will no longer accept new operations.

**When to use**

Use when handling an `RcMap` after its owning scope has closed.

**Signature**

```ts
export interface Closed {
    readonly _tag: "Closed"
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RcMap.ts#L140)

Since v4.0.0