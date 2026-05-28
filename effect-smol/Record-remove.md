Package: `effect`<br />
Module: `Record`<br />

## Record.remove

Removes a key from a record.

**When to use**

Use to create a shallow copy of a record without one property.

**Details**

If the key is not present, the result is still a shallow copy of the original
record.

**Example** (Removing a key)

```ts
import { Record } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(Record.remove({ a: 1, b: 2 }, "a"), { b: 2 })
```

**Signature**

```ts
declare const remove: { <K extends string | symbol, X extends K>(key: X): <A>(self: ReadonlyRecord<K, A>) => Record<Exclude<K, X>, A>; <K extends string | symbol, A, X extends K>(self: ReadonlyRecord<K, A>, key: X): Record<Exclude<K, X>, A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Record.ts#L615)

Since v2.0.0