Package: `effect`<br />
Module: `Stream`<br />

## Stream.StreamTypeLambda

Type lambda for Stream used in higher-kinded type operations.

**Example** (Using the stream type lambda)

```ts
import type { HKT, Stream } from "effect"

// Create a Stream type using the type lambda
type NumberStream = HKT.Kind<Stream.StreamTypeLambda, never, string, never, number>
// Equivalent to: Stream<number, string, never>
```

**Signature**

```ts
export interface StreamTypeLambda extends TypeLambda {
  readonly type: Stream<this["Target"], this["Out1"], this["Out2"]>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L188)

Since v2.0.0