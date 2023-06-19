# unsafeCoerce

Casts the result to the specified type.

Part of the `Function` module, imported from `@effect/data/Function`.

**Example**

```ts
import { unsafeCoerce, identity } from '@effect/data/Function'

assert.deepStrictEqual(unsafeCoerce, identity)
```

**Signature**

```ts
export declare const unsafeCoerce: <A, B>(a: A) => B
```
