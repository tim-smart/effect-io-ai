Package: `effect`<br />
Module: `Record`<br />

## Record.findFirst

Returns the first entry that satisfies the specified
predicate, or `None` if no such entry exists.

**Example**

```ts
import { Record, Option } from "effect"

const record = { a: 1, b: 2, c: 3 }
const result = Record.findFirst(record, (value, key) => value > 1 && key !== "b")
console.log(result) // Option.Some(["c", 3])
```

**Signature**

```ts
declare const findFirst: { <K extends string | symbol, V, V2 extends V>(refinement: (value: NoInfer<V>, key: NoInfer<K>) => value is V2): (self: ReadonlyRecord<K, V>) => Option.Option<[K, V2]>; <K extends string | symbol, V>(predicate: (value: NoInfer<V>, key: NoInfer<K>) => boolean): (self: ReadonlyRecord<K, V>) => Option.Option<[K, V]>; <K extends string | symbol, V, V2 extends V>(self: ReadonlyRecord<K, V>, refinement: (value: NoInfer<V>, key: NoInfer<K>) => value is V2): Option.Option<[K, V2]>; <K extends string | symbol, V>(self: ReadonlyRecord<K, V>, predicate: (value: NoInfer<V>, key: NoInfer<K>) => boolean): Option.Option<[K, V]>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Record.ts#L1247)

Since v3.14.0