Package: `effect`<br />
Module: `Stream`<br />

## Stream.Error

Extract the error type from a Stream type.

**Example**

```ts
import type { Stream } from "effect"

type NumberStream = Stream.Stream<number, string, never>
type ErrorType = Stream.Error<NumberStream>
// ErrorType is string
```

**Signature**

```ts
type Error<T> = [T] extends [Stream<infer _A, infer _E, infer _R>] ? _E : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L223)

Since v3.4.0