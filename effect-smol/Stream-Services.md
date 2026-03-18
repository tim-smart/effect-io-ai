Package: `effect`<br />
Module: `Stream`<br />

## Stream.Services

Extract the services type from a Stream type.

**Previously Known As:**

This type alias was named `Context` in Effect 3.x.

**Example**

```ts
import type { Stream } from "effect"

interface Database {
  query: (sql: string) => unknown
}
type NumberStream = Stream.Stream<number, string, { db: Database }>
type RequiredServices = Stream.Services<NumberStream>
// RequiredServices is { db: Database }
```

**Signature**

```ts
type Services<T> = [T] extends [Stream<infer _A, infer _E, infer _R>] ? _R
  : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L247)

Since v3.4.0