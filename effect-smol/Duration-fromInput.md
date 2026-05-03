Package: `effect`<br />
Module: `Duration`<br />

## Duration.fromInput

Safely decodes a `Input` value into a `Duration`, returning
`Option.none()` if decoding fails.

**Example**

```ts
import { Duration, Option } from "effect"

Duration.fromInput(1000).pipe(Option.map(Duration.toSeconds)) // Some(1)

Duration.fromInput("invalid" as any) // None
```

**Signature**

```ts
declare const fromInput: (u: Input) => Option.Option<Duration>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Duration.ts#L258)

Since v4.0.0