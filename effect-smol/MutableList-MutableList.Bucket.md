Package: `effect`<br />
Module: `MutableList`<br />

## MutableList.MutableList.Bucket

Internal bucket structure used by MutableList to store elements efficiently.
Buckets are linked together to form the list structure.

**Example**

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/MutableList.ts#L144)

Since v4.0.0