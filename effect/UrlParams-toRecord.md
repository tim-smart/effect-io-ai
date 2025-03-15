Package: `@effect/platform`<br />
Module: `UrlParams`<br />

## UrlParams.toRecord

Builds a `Record` containing all the key-value pairs in the given `UrlParams`
as `string` (if only one value for a key) or a `NonEmptyArray<string>`
(when more than one value for a key)

**Example**

```ts
import * as assert from "node:assert"
import { UrlParams } from "@effect/platform"

const urlParams = UrlParams.fromInput({ a: 1, b: true, c: "string", e: [1, 2, 3] })
const result = UrlParams.toRecord(urlParams)

assert.deepStrictEqual(
  result,
  { "a": "1", "b": "true", "c": "string", "e": ["1", "2", "3"] }
)
```

**Signature**

```ts
declare const toRecord: (self: UrlParams) => Record<string, string | Arr.NonEmptyArray<string>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/UrlParams.ts#L236)

Since v1.0.0