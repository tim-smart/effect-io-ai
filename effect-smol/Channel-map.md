Package: `effect`<br />
Module: `Channel`<br />

## Channel.map

Maps the output of this channel using the specified function.

**Example**

```ts
import { Channel, Data } from "effect"

class TransformError extends Data.TaggedError("TransformError")<{
  readonly reason: string
}> {}

// Basic mapping of channel values
const numbersChannel = Channel.fromIterable([1, 2, 3, 4, 5])
const doubledChannel = Channel.map(numbersChannel, (n) => n * 2)
// Outputs: 2, 4, 6, 8, 10

// Transform string data
const wordsChannel = Channel.fromIterable(["hello", "world", "effect"])
const upperCaseChannel = Channel.map(wordsChannel, (word) => word.toUpperCase())
// Outputs: "HELLO", "WORLD", "EFFECT"

// Complex object transformation
type User = { id: number; name: string }
type UserDisplay = { displayName: string; isActive: boolean }

const usersChannel = Channel.fromIterable([
  { id: 1, name: "Alice" },
  { id: 2, name: "Bob" }
])
const displayChannel = Channel.map(usersChannel, (user): UserDisplay => ({
  displayName: `User: ${user.name}`,
  isActive: true
}))
```

**Signature**

```ts
declare const map: { <OutElem, OutElem2>(f: (o: OutElem, i: number) => OutElem2): <OutErr, OutDone, InElem, InErr, InDone, Env>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>) => Channel<OutElem2, OutErr, OutDone, InElem, InErr, InDone, Env>; <OutElem, OutErr, OutDone, InElem, InErr, InDone, Env, OutElem2>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>, f: (o: OutElem, i: number) => OutElem2): Channel<OutElem2, OutErr, OutDone, InElem, InErr, InDone, Env>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L1668)

Since v2.0.0