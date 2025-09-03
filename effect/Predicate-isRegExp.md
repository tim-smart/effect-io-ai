Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isRegExp

A refinement that checks if a value is a `RegExp`.

**Example**

```ts
import * as assert from "node:assert"
import { Predicate } from "effect"

assert.strictEqual(Predicate.isRegExp(/a/), true)
assert.strictEqual(Predicate.isRegExp(new RegExp("a")), true)

assert.strictEqual(Predicate.isRegExp("/a/"), false)
```

**Signature**

```ts
declare const isRegExp: (input: unknown) => input is RegExp
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Predicate.ts#L890)

Since v3.9.0