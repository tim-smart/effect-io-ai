Package: `effect`<br />
Module: `Stream`<br />

## Stream.StreamUnifyIgnore

Type-level marker that excludes Stream from unification.

**Example**

```ts
import type * as Stream from "effect/Stream"

// Used internally by the type system
// Users typically don't interact with this directly
type StreamIgnore = Stream.StreamUnifyIgnore
```

**Signature**

```ts
export interface StreamUnifyIgnore {
  Effect?: true
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L145)

Since v2.0.0