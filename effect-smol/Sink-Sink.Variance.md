Package: `effect`<br />
Module: `Sink`<br />

## Sink.Sink.Variance

Represents the variance annotations for a Sink type.
Used internally to track how type parameters flow through the Sink.

**Example**

```ts
import type * as Sink from "effect/Sink"

// The variance interface is used internally
// It defines how type parameters behave in Sink
type SinkWithVariance = Sink.Sink<string> & { variance: "internal" }
```

**Signature**

```ts
export interface Variance<out A, in In, out L, out E, out R> {
    readonly [TypeId]: VarianceStruct<A, In, L, E, R>
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Sink.ts#L164)

Since v2.0.0