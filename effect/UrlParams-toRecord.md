# toRecord

Builds a `Record` containing all the key-value pairs in the given `UrlParams`
as `string` (if only one value for a key) or a `NonEmptyArray<string>`
(when more than one value for a key)

To import and use `toRecord` from the "UrlParams" module:

```ts
import * as UrlParams from "@effect/platform/UrlParams"
// Can be accessed like this
UrlParams.toRecord
```

**Example**

```ts
import { UrlParams } from "@effect/platform"

const urlParams = UrlParams.fromInput({ a: 1, b: true, c: "string", e: [1, 2, 3] })
const result = UrlParams.toRecord(urlParams)

assert.deepStrictEqual(result, { a: "1", b: "true", c: "string", e: ["1", "2", "3"] })
```

**Signature**

```ts
export declare const toRecord: (self: UrlParams) => Record<string, string | Arr.NonEmptyArray<string>>
```
