# get

Retrieves the value associated with the specified key from a struct.

To import and use `get` from the "Struct" module:

ts
import \* as Struct from "effect/Struct"
// Can be accessed like this
Struct.get
undefined

**Example**

```ts
import { pipe, Struct } from "effect"

const value = pipe({ a: 1, b: 2 }, Struct.get("a"))

assert.deepStrictEqual(value, 1)
```

**Signature**

```ts
export declare const get: <K extends PropertyKey>(
  key: K
) => <S extends { [P in K]?: any }>(s: S) => MatchRecord<S, S[K] | undefined, S[K]>
```
