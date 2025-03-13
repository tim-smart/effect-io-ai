Package: `effect`<br />
Module: `Struct`<br />

## Struct.get

Retrieves the value associated with the specified key from a struct.

**Example**

```ts
import * as assert from "node:assert"
import { pipe, Struct } from "effect"

const value = pipe({ a: 1, b: 2 }, Struct.get("a"))

assert.deepStrictEqual(value, 1)
```

**Signature**

```ts
declare const get: <K extends PropertyKey>(key: K) => <S extends { [P in K]?: any; }>(s: S) => MatchRecord<S, S[K] | undefined, S[K]>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Struct.ts#L194)

Since v2.0.0