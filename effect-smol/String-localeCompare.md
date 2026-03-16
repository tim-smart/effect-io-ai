Package: `effect`<br />
Module: `String`<br />

## String.localeCompare

Compares two strings according to the current locale.

**Example**

```ts
import { pipe, String } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(pipe("a", String.localeCompare("b")), -1)
assert.deepStrictEqual(pipe("b", String.localeCompare("a")), 1)
assert.deepStrictEqual(pipe("a", String.localeCompare("a")), 0)
```

**Signature**

```ts
declare const localeCompare: (that: string, locales?: Array<string>, options?: Intl.CollatorOptions) => (self: string) => Ordering.Ordering
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/String.ts#L627)

Since v2.0.0