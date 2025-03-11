## pop

Retrieves the value of the property with the given `key` from a record and returns an `Option`
of a tuple with the value and the record with the removed property.
If the key is not present, returns `O.none`.

**Example**

```ts
import * as assert from "node:assert"
import { Record as R, Option } from "effect"

assert.deepStrictEqual(R.pop({ a: 1, b: 2 }, "a"), Option.some([1, { b: 2 }]))
assert.deepStrictEqual(R.pop({ a: 1, b: 2 } as Record<string, number>, "c"), Option.none())
```

**Signature**

```ts
declare const pop: { <K extends string | symbol, X extends K>(key: X): <A>(self: ReadonlyRecord<K, A>) => Option.Option<[A, Record<Exclude<K, X>, A>]>; <K extends string | symbol, A, X extends K>(self: ReadonlyRecord<K, A>, key: X): Option.Option<[A, Record<Exclude<K, X>, A>]>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Record.ts#L486)

Since v2.0.0