Package: `effect`<br />
Module: `Sink`<br />

## Sink.isSink

Checks whether a value is a Sink.

**Example** (Checking for a sink)

```ts
import { Sink } from "effect"

const sink = Sink.never
const notStream = { data: [1, 2, 3] }

console.log(Sink.isSink(sink)) // true
console.log(Sink.isSink(notStream)) // false
```

**Signature**

```ts
declare const isSink: (u: unknown) => u is Sink<unknown, never, unknown, unknown, unknown>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Sink.ts#L210)

Since v4.0.0