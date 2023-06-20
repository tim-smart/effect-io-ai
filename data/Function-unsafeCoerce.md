# unsafeCoerce

Casts the result to the specified type.

To import and use `unsafeCoerce` from the "Function" module:

```ts
import * as Function from '@effect/data/Function'

// Can be accessed like this
Function.unsafeCoerce
```

**Example**

```ts
import { unsafeCoerce, identity } from '@effect/data/Function'

assert.deepStrictEqual(unsafeCoerce, identity)
```

**Signature**

```ts
export declare const unsafeCoerce: <A, B>(a: A) => B
```
