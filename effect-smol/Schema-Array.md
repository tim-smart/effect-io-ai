Package: `effect`<br />
Module: `Schema`<br />

## Schema.Array

Defines a `ReadonlyArray` schema for a given element schema.

**Example** (Array of strings)

```ts
import { Schema } from "effect"

const schema = Schema.Array(Schema.String)

const result = Schema.decodeUnknownSync(schema)(["a", "b", "c"])
console.log(result)
// [ 'a', 'b', 'c' ]
```

**Signature**

```ts
declare const Array: ArrayLambda
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L3220)

Since v4.0.0