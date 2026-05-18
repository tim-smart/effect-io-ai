Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.compact

Filter out optional values

**Example** (Compacting optional values)

```ts
import { Chunk } from "effect"
import * as Option from "effect/Option"

const chunk = Chunk.make(Option.some(1), Option.none(), Option.some(3))
const result = Chunk.compact(chunk)
console.log(Chunk.toArray(result)) // [1, 3]
```

**Signature**

```ts
declare const compact: <A>(self: Chunk<Option<A>>) => Chunk<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chunk.ts#L1145)

Since v2.0.0