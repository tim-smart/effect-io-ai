Package: `effect`<br />
Module: `Array`<br />

## Array.fromRecord

Converts a record into an array of `[key, value]` tuples.

**When to use**

Use to convert a record into an array of key-value tuples for iteration or
transformation.

**Details**

Key order follows `Object.entries` semantics. Empty records produce an empty
array.

**Example** (Converting a record to entries)

```ts
import { Array } from "effect"

const result = Array.fromRecord({ a: 1, b: 2, c: 3 })
console.log(result) // [["a", 1], ["b", 2], ["c", 3]]
```

**See**

- `Record.toEntries` the equivalent function from the Record module
- `Record.fromEntries` to build a record from an array of tuples

**Signature**

```ts
declare const fromRecord: <K extends string, A>(self: Readonly<Record<K, A>>) => Array<[K, A]>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L366)

Since v2.0.0