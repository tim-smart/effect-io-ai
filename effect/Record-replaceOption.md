## replaceOption

Replaces a value in the record with the new value passed as parameter.

**Example**

```ts
import * as assert from "node:assert"
import { Record, Option } from "effect"

assert.deepStrictEqual(
  Record.replaceOption({ a: 1, b: 2, c: 3 }, 'a', 10),
  Option.some({ a: 10, b: 2, c: 3 })
)
assert.deepStrictEqual(Record.replaceOption(Record.empty<string>(), 'a', 10), Option.none())
```

**Signature**

```ts
declare const replaceOption: { <K extends string | symbol, B>(key: NoInfer<K>, b: B): <A>(self: ReadonlyRecord<K, A>) => Option.Option<Record<K, A | B>>; <K extends string | symbol, A, B>(self: ReadonlyRecord<K, A>, key: NoInfer<K>, b: B): Option.Option<Record<K, A | B>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Record.ts#L421)

Since v2.0.0