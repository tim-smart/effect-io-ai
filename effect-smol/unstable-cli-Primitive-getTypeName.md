Package: `effect`<br />
Module: `Primitive`<br />

## Primitive.getTypeName

Gets a human-readable type name for a primitive.

Used for generating help documentation.

**Example**

```ts
import { Primitive } from "effect/unstable/cli"

console.log(Primitive.getTypeName(Primitive.string)) // "string"
console.log(Primitive.getTypeName(Primitive.integer)) // "integer"
console.log(Primitive.getTypeName(Primitive.boolean)) // "boolean"
console.log(Primitive.getTypeName(Primitive.date)) // "date"
console.log(Primitive.getTypeName(Primitive.keyValuePair)) // "key=value"

const logLevelChoice = Primitive.choice([
  ["debug", "debug"],
  ["info", "info"]
])
console.log(Primitive.getTypeName(logLevelChoice)) // "choice"
```

**Signature**

```ts
declare const getTypeName: <A>(primitive: Primitive<A>) => string
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Primitive.ts#L684)

Since v4.0.0