Package: `effect`<br />
Module: `Array`<br />

## Array.fromRecord

Takes a record and returns an array of tuples containing its keys and values.

**Example**

```ts
import { Array } from "effect"

const result = Array.fromRecord({ a: 1, b: 2, c: 3 })
console.log(result) // [["a", 1], ["b", 2], ["c", 3]]
```

**Signature**

```ts
declare const fromRecord: <K extends string, A>(self: Readonly<Record<K, A>>) => Array<[K, A]>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L201)

Since v2.0.0