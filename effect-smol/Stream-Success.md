Package: `effect`<br />
Module: `Stream`<br />

## Stream.Success

Extract the success type from a Stream type.

**Example**

```ts
import type { Stream } from "effect"

type NumberStream = Stream.Stream<number, string, never>
type SuccessType = Stream.Success<NumberStream>
// SuccessType is number
```

**Signature**

```ts
type Success<T> = [T] extends [Stream<infer _A, infer _E, infer _R>] ? _A : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L196)

Since v3.4.0