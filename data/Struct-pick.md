# pick

Create a new object by picking properties of an existing object.

To import and use `pick` from the "Struct" module:

```ts
import * as Struct from '@effect/data/Struct'

// Can be accessed like this
Struct.pick
```

**Example**

```ts
import { pick } from '@effect/data/Struct'
import { pipe } from '@effect/data/Function'

assert.deepStrictEqual(pipe({ a: 'a', b: 1, c: true }, pick('a', 'b')), { a: 'a', b: 1 })
```

**Signature**

```ts
export declare const pick: <S, Keys extends readonly [keyof S, ...(keyof S)[]]>(
  ...keys: Keys
) => (s: S) => { [K in Keys[number]]: S[K] }
```
