Package: `effect`<br />
Module: `Sink`<br />

## Sink.SinkUnifyIgnore

Interface used to ignore certain types during Sink unification.
Part of the internal type system machinery.

**Example**

```ts
import type * as Sink from "effect/Sink"

// Used internally by the type system
type IgnoreConfig = Sink.SinkUnifyIgnore
```

**Signature**

```ts
export interface SinkUnifyIgnore {
  Effect?: true
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Sink.ts#L128)

Since v2.0.0