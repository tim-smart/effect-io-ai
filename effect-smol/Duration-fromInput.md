Package: `effect`<br />
Module: `Duration`<br />

## Duration.fromInput

Safely decodes a `Input` value into a `Duration`, returning
`undefined` if decoding fails.

**Example**

```ts
import { Duration } from "effect"

Duration.fromInput(1000)?.pipe(Duration.toSeconds) // 1

Duration.fromInput("invalid" as any) // undefined
```

**Signature**

```ts
declare const fromInput: (u: Input) => Duration | undefined
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Duration.ts#L246)

Since v4.0.0