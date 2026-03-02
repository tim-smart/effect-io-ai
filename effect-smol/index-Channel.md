Package: `effect`<br />
Module: `index`<br />

## index.Channel

Re-exports all named exports from the "./Channel.ts" module as `Channel`.

**Example**

```ts
import { Channel } from "effect"

// Simple channel that outputs numbers
const numberChannel = Channel.succeed(42)

// Transform channel that doubles values
const doubleChannel = Channel.map(numberChannel, (n) => n * 2)

// Running the channel would output: 84
```

**Example**

```ts
import { Channel } from "effect"

// Channel from an array of values
const arrayChannel = Channel.fromArray([1, 2, 3, 4, 5])

// Transform the channel by mapping over values
const transformedChannel = Channel.map(arrayChannel, (n) => n * 2)

// This channel will output: 2, 4, 6, 8, 10
```

**Signature**

```ts
export * as Channel from "./Channel.ts"
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/index.ts#L307)

Since v2.0.0