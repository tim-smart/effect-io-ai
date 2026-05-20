Package: `effect`<br />
Module: `Duration`<br />

## Duration.fromInputUnsafe

Decodes a `Duration.Input` into a `Duration`.

**Gotchas**

If the input is not a valid `Duration.Input`, it throws an error.

**Example** (Decoding duration inputs)

```ts
import { Duration } from "effect"

const duration1 = Duration.fromInputUnsafe(1000) // 1000 milliseconds
const duration2 = Duration.fromInputUnsafe("5 seconds")
const duration3 = Duration.fromInputUnsafe("Infinity")
const duration4 = Duration.fromInputUnsafe([2, 500_000_000]) // 2 seconds and 500ms
```

**Signature**

```ts
declare const fromInputUnsafe: (input: Input) => Duration
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Duration.ts#L168)

Since v4.0.0