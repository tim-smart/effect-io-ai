Package: `effect`<br />
Module: `Record`<br />

## Record.assignProperty

Mutates a record by assigning a value to a property.

**When to use**

Use when incrementally constructing a new record and copying it for every
property would be unnecessary.

**Gotchas**

This function mutates `self`. When `key` is `"__proto__"`, it creates an
own data property instead of changing the object's prototype.

**Example** (Assigning an external key safely)

```ts
import { Record } from "effect"
import * as assert from "node:assert"

const key: string = "__proto__" // Assume this comes from external input
const value = { polluted: true }

const unsafe: Record<string, unknown> = {}
unsafe[key] = value
assert.strictEqual(Object.getPrototypeOf(unsafe), value)

const safe: Record<string, unknown> = {}
Record.assignProperty(safe, key, value)
assert.strictEqual(Object.getPrototypeOf(safe), Object.prototype)
assert.strictEqual(safe[key], value)
```

**See**

- `set` for an immutable update

**Signature**

```ts
declare const assignProperty: (self: object, key: PropertyKey, value: unknown) => void
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Record.ts#L1109)

Since v4.0.0