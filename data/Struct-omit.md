# omit

Create a new object by omitting properties of an existing object.

To import and use `omit` from the "Struct" module:

```ts
import * as Struct from '@effect/data/Struct'

// Can be accessed like this
Struct.omit
```

**Example**

```ts
import { omit } from '@effect/data/Struct'
import { pipe } from '@effect/data/Function'

assert.deepStrictEqual(pipe({ a: 'a', b: 1, c: true }, omit('c')), { a: 'a', b: 1 })
```

**Signature**

```ts
export declare const omit: <S, Keys extends readonly [keyof S, ...(keyof S)[]]>(
  ...keys: Keys
) => (s: S) => { [K in Exclude<keyof S, Keys[number]>]: S[K] }
```
