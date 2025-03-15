Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isTagged

Tests if a value is an `object` with a property `_tag` that matches the given tag.

**Example**

```ts
import * as assert from "node:assert"
import { isTagged } from "effect/Predicate"

assert.deepStrictEqual(isTagged(1, "a"), false)
assert.deepStrictEqual(isTagged(null, "a"), false)
assert.deepStrictEqual(isTagged({}, "a"), false)
assert.deepStrictEqual(isTagged({ a: "a" }, "a"), false)
assert.deepStrictEqual(isTagged({ _tag: "a" }, "a"), true)
assert.deepStrictEqual(isTagged("a")({ _tag: "a" }), true)
```

**Signature**

```ts
declare const isTagged: { <K extends string>(tag: K): (self: unknown) => self is { _tag: K; }; <K extends string>(self: unknown, tag: K): self is { _tag: K; }; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Predicate.ts#L495)

Since v2.0.0