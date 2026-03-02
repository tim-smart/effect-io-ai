Package: `effect`<br />
Module: `MutableList`<br />

## MutableList.MutableList

A mutable linked list data structure optimized for high-throughput operations.
MutableList provides efficient append/prepend operations and is ideal for
producer-consumer patterns, queues, and streaming scenarios.

**Example**

```ts
import * as MutableList from "effect/MutableList"

// Create a mutable list
const list: MutableList.MutableList<number> = MutableList.make()

// Add elements
MutableList.append(list, 1)
MutableList.append(list, 2)
MutableList.prepend(list, 0)

// Access properties
console.log(list.length) // 3
console.log(list.head?.array) // Contains elements from head bucket
console.log(list.tail?.array) // Contains elements from tail bucket

// Take elements
console.log(MutableList.take(list)) // 0
console.log(MutableList.take(list)) // 1
console.log(MutableList.take(list)) // 2
```

**Signature**

```ts
export interface MutableList<in out A> {
  head: MutableList.Bucket<A> | undefined
  tail: MutableList.Bucket<A> | undefined
  length: number
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/MutableList.ts#L70)

Since v4.0.0