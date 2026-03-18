Package: `effect`<br />
Module: `Channel`<br />

## Channel.fromIteratorArray

Creates a `Channel` from an iterator that emits arrays of elements.

**Example**

```ts
import { Channel } from "effect"

// Create a channel from a simple iterator
const numberIterator = (): Iterator<number, string> => {
  let count = 0
  return {
    next: () => {
      if (count < 3) {
        return { value: count++, done: false }
      }
      return { value: "finished", done: true }
    }
  }
}

const channel = Channel.fromIteratorArray(() => numberIterator(), 2)
// This will emit arrays: [0, 1], [2], then complete with "finished"
```

**Example**

```ts
import { Channel } from "effect"

// Create channel from a generator function
function* fibonacci(): Generator<number, void, unknown> {
  let a = 0, b = 1
  for (let i = 0; i < 5; i++) {
    yield a
    ;[a, b] = [b, a + b]
  }
}

const fibChannel = Channel.fromIteratorArray(() => fibonacci(), 3)
// Emits: [0, 1, 1], [2, 3], then completes
```

**Signature**

```ts
declare const fromIteratorArray: <A, L>(iterator: LazyArg<Iterator<A, L>>, chunkSize?: number) => Channel<Arr.NonEmptyReadonlyArray<A>, never, L>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L702)

Since v2.0.0