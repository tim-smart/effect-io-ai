Package: `effect`<br />
Module: `Function`<br />

## Function.unsafeCoerce

Casts the result to the specified type.

**Example**

```ts
import * as assert from "node:assert"
import { unsafeCoerce, identity } from "effect/Function"

assert.deepStrictEqual(unsafeCoerce, identity)
```

**Signature**

```ts
declare const unsafeCoerce: <A, B>(a: A) => B
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Function.ts#L250)

Since v2.0.0