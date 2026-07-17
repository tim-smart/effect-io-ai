Package: `effect`<br />
Module: `String`<br />

## String.localeCompare

Computes locale-aware ordering for two strings, with optional locales and
collator options, and returns the result as an `Ordering` (`-1`, `0`, or
`1`).

**Example** (Comparing strings by locale)

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

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/String.ts#L681)

Since v2.0.0