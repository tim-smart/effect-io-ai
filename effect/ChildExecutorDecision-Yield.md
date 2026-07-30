Package: `effect`<br />
Module: `ChildExecutorDecision`<br />

## ChildExecutorDecision.Yield

Pass execution to the next substream. This either pulls a new element
from upstream, or yields to an already created active substream.

**Signature**

```ts
export interface Yield extends ChildExecutorDecision.Proto {
  readonly _tag: "Yield"
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/ChildExecutorDecision.ts#L66)

Since v2.0.0