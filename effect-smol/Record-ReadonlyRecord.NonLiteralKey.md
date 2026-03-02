Package: `effect`<br />
Module: `Record`<br />

## Record.ReadonlyRecord.NonLiteralKey

Represents a type that converts literal string keys to generic string type and symbol keys to generic symbol type.
This is useful for maintaining type safety while allowing flexible key types in record operations.

**Example**

```ts
import type { Record } from "effect"

// For literal string keys, this becomes 'string'
type Example1 = Record.ReadonlyRecord.NonLiteralKey<"foo" | "bar"> // string

// For symbol keys, this becomes 'symbol'
type Example2 = Record.ReadonlyRecord.NonLiteralKey<symbol> // symbol
```

**Signature**

```ts
type NonLiteralKey<K> = K extends string ? IsFiniteString<K> extends true ? string : K
    : symbol
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Record.ts#L84)

Since v2.0.0