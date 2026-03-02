Package: `effect`<br />
Module: `Record`<br />

## Record.ReadonlyRecord

Represents a readonly record with keys of type `K` and values of type `A`.
This is the foundational type for immutable key-value mappings in Effect.

**Example**

```ts
import type { Record } from "effect"

// Creating a readonly record type
type UserRecord = Record.ReadonlyRecord<"name" | "age", string | number>

const user: UserRecord = {
  name: "John",
  age: 30
}
```

**Signature**

```ts
type ReadonlyRecord<K, A> = {
  readonly [P in K]: A
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Record.ts#L39)

Since v2.0.0