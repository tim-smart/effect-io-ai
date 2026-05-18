Package: `effect`<br />
Module: `MutableList`<br />

## MutableList.MutableList.Bucket

Storage node used by the exposed `head` and `tail` fields of a
`MutableList`.

Most code should treat buckets as an implementation detail and use
`MutableList` operations such as `append`, `prepend`, and `take` instead
of constructing or mutating buckets directly.

**Example** (Inspecting buckets)

```ts
import * as MutableList from "effect/MutableList"

const list = MutableList.make<number>()
MutableList.append(list, 1)
MutableList.append(list, 2)

// Access bucket information (for debugging or advanced usage)
const inspectBucket = (
  bucket: MutableList.MutableList.Bucket<number> | undefined
) => {
  if (bucket) {
    console.log("Bucket array:", bucket.array)
    console.log("Bucket offset:", bucket.offset)
    console.log("Bucket mutable:", bucket.mutable)
    console.log("Has next bucket:", bucket.next !== undefined)
  }
}

inspectBucket(list.head)
inspectBucket(list.tail)
```

**Signature**

```ts
export interface Bucket<A> {
    readonly array: Array<A>
    mutable: boolean
    offset: number
    next: Bucket<A> | undefined
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/MutableList.ts#L167)

Since v4.0.0