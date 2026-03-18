Package: `effect`<br />
Module: `Stream`<br />

## Stream.StreamTypeLambda

Type lambda for Stream used in higher-kinded type operations.

**Example**

```ts
import type { Kind } from "effect/HKT"
import type { StreamTypeLambda } from "effect/Stream"

// Create a Stream type using the type lambda
type NumberStream = Kind<StreamTypeLambda, never, string, never, number>
// Equivalent to: Stream<number, string, never>
```

**Signature**

```ts
export interface StreamTypeLambda extends TypeLambda {
  readonly type: Stream<this["Target"], this["Out1"], this["Out2"]>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L165)

Since v2.0.0