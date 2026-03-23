Package: `effect`<br />
Module: `Sink`<br />

## Sink.isSink

Checks if a value is a Sink.

**Example**

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Sink.ts#L224)

Since v2.0.0